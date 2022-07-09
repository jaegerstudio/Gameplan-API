using System;
using System.Data;
using System.Linq;
using System.Web.Http;
using Gameplan.Core.Configuration;
using Gameplan.Core.Domain;
using Gameplan.Data;
using Gameplan.WebService.Models;
using Gameplan.WebService.Models.Account;
using Gameplan.Common;
using Gameplan.Common.Model;
using Gameplan.Common.Repository;
using Gameplan.Common.Request;
using Gameplan.Common.Response;
using System.Web.Configuration;
using System.Configuration;
using System.Net.Mail;

namespace Gameplan.WebService.Controllers
{
    public class AccountController : BaseApiController
    {
        [HttpGet]
        public ResponseMessage Signin([FromUri] SigninRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var datetime = DateTime.Now.Ticks;
                var userInfo = (from s in context.UserInfo
                                where s.Username == request.UserId
                                     && s.Password == request.Password
                                     && s.Status != 9
                                     && (s.UserInitDate == 0 || s.UserInitDate <= datetime)
                                //&& (s.UserExpDate == 0 || s.UserExpDate >= datetime)
                                select s).FirstOrDefault();
                if (userInfo == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.IncorrectAccount,
                                   //Message = String.Format("Account Class - Cannot find the user using the user Id: {0} and password {1}.", request.UserId, request.Password)
                                   Message = "add request.UserId - Cannot find the user using the user ID:" + request.UserId
                               };
                }
                var token = Guid.NewGuid().ToString().Replace("-", "");
                var datatime = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                var securityToken = new SecurityToken
                                        {
                                            Id = Guid.NewGuid(),
                                            Token = token,
                                            DeviceId = request.DeviceId,
                                            UserId = userInfo.Id,
                                            Status = 0,
                                            CreateDate = datatime,
                                            SignoutDate = datatime,
                                            SignoutMethod = "AUTO",
                                            LastActDate = datatime,
                                            DbVersion = request.DbVersion
                                        };
                context.SecurityToken.InsertOnSubmit(securityToken);
                context.SubmitChanges();
                long version = 0;
                var dbVersion = (from s in context.DbVersion
                                 where s.UserId == userInfo.Id
                                 orderby s.Version descending
                                 select s).FirstOrDefault();
                if (dbVersion != null)
                    version = dbVersion.Version;
                var localization = "";
                var languageInfo = (from s in context.LanguageInfo
                                    where s.Id == userInfo.LanguageId
                                    select s).FirstOrDefault();
                if (languageInfo != null)
                    localization = languageInfo.Localization;

                long expiredTime = 0;
                if (userInfo.UserExpDate != null)
                {
                    DateTime userExpDate = userInfo.UserExpDate.Value;
                    expiredTime = Convert.ToInt64(userExpDate.ToUniversalTime()
                        .Subtract(new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc)).TotalMilliseconds);
                }

                var model = new UserModel
                                {
                                    UserId = userInfo.Id,
                                    DisplayName = String.Format("{0} {1}", userInfo.Firstname, userInfo.Lastname),
                                    FirstName = userInfo.Firstname,
                                    LastName = userInfo.Lastname,
                                    CompanyId = userInfo.CompanyId,
                                    LanguageId = userInfo.LanguageId,
                                    Emotional = userInfo.Emotional,
                                    Dominance = userInfo.Dominance,
                                    LocalizationName = localization,
                                    Avatar = userInfo.Avatar,
                                    JobTitle = userInfo.JobTitle,
                                    Token = token,
                                    DbVersion = version,
                                    UserExpDate = expiredTime,
                                    DeviceUniqueID = userInfo.DeviceUniqueID
                                };
                var cacheKey = string.Format(Key, token);
                CacheManager.Set(cacheKey, model, 360);

                int code = BaseCode.Success;

                if (request.ApiVersion == 3)
                {
                    UserState userState = getUserState(model.UserId);
                    if (userState == UserState.EXPIRED) code = BaseCode.Expired;
                    if (userState == UserState.WARNING) code = BaseCode.Warning;
                }

                return new ResponseMessage
                           {
                               Code = code,
                               Message = "Success",
                               Result = model
                           };
            }
        }

        [HttpGet]
        public ResponseMessage Signout([FromUri] SignoutRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                                     where s.Token == request.Token
                                           && s.Status == (int)AppInfoStatus.Online
                                     select s).FirstOrDefault();
                //                if (securityToken == null)
                //                {
                //                    return new ResponseMessage
                //                               {
                //                                   Code = BaseCode.DataNotExist
                //                               };
                //                }

                if (securityToken != null)
                {
                    var datetime = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                    securityToken.Status = 1;
                    securityToken.SignoutDate = datetime;
                    securityToken.SignoutMethod = "AUTO";
                    securityToken.LastActDate = datetime;
                    context.SubmitChanges();
                }
                //var cacheKey = string.Format(Key, request.Token);
                //CacheManager.Remove(cacheKey);
                return new ResponseMessage
                           {
                               Code = BaseCode.Success,
                               Message = "Success"
                           };
            }
        }

        [HttpPost]
        //public ResponseMessage Edit([FromUri] EditRequest request)
        public ResponseMessage Edit(EditRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                                     where s.Token == request.Token
                                           && s.Status == (int)AppInfoStatus.Online
                                     select s).FirstOrDefault();
                if (securityToken == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.InvalidSessionId,
                                   Message = BaseMessage.InvalidSessionId
                               };
                }
                var userInfo = (from s in context.UserInfo
                                where s.Id == securityToken.UserId
                                select s).FirstOrDefault();
                if (userInfo == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.DataNotExist
                               };
                }

                if (request.ApiVersion == 3)
                {
                    UserState userState = this.getUserState(userInfo.Id);
                    if (userState == UserState.EXPIRED)
                    {
                        return new ResponseMessage
                        {
                            Code = BaseCode.Expired,
                            Message = BaseMessage.UserExpired,
                            UserExpDate = getUserExpDate(userInfo.Id)
                        };
                    }
                }

                var fileStorageRepo = new FileStorageRepository();
                fileStorageRepo.SaveAvatarImage(securityToken.UserId, request.Avatar);

                userInfo.Firstname = !string.IsNullOrEmpty(request.FName) ? request.FName : "";
                userInfo.Lastname = !string.IsNullOrEmpty(request.LName) ? request.LName : "";
                userInfo.JobTitle = !string.IsNullOrEmpty(request.JobTitle) ? request.JobTitle : "";
                userInfo.Avatar = !string.IsNullOrEmpty(request.Avatar) ? request.Avatar : "";
                //mobileUser.
                context.SubmitChanges();
                var datetime = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                var dbVersion = (from s in context.DbVersion
                                 where s.UserId == userInfo.Id
                                 orderby s.Version descending
                                 select s).FirstOrDefault();
                long version = 1;
                if (dbVersion != null)
                    version = dbVersion.Version;
                //dbVersion = new DbVersion
                //                {
                //                    UserId = userInfo.Id,
                //                    TableName = "PC_MobileUser",
                //                    RecordId = userInfo.Id,
                //                    Action = "C",
                //                    Version = version,
                //                    CreateDate = datetime
                //                };
                //context.DbVersion.InsertOnSubmit(dbVersion);
                //context.SubmitChanges();
                securityToken.LastActDate = datetime;
                securityToken.DbVersion = version;
                context.SubmitChanges();
                return new ResponseMessage
                           {
                               Code = BaseCode.Success,
                               Message = BaseMessage.Success
                           };
            }
        }

        [HttpGet]
        public ResponseMessage ChangePassword([FromUri] ChangePasswordRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                                     where s.Token == request.Token
                                           && s.Status == (int)AppInfoStatus.Online
                                     select s).FirstOrDefault();
                if (securityToken == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.InvalidSessionId,
                                   Message = BaseMessage.InvalidSessionId
                               };
                }
                var datetime = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                if (request.Newp != request.Rnewp)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.NewPasswordsNotMatch,
                                   Message = BaseMessage.NewPasswordsNotMatch
                               };
                }
                var userInfo = (from s in context.UserInfo
                                where s.Id == securityToken.UserId
                                select s).FirstOrDefault();



                if (userInfo == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.DataNotExist
                               };
                }

                if (request.ApiVersion == 3)
                {
                    UserState userState = this.getUserState(userInfo.Id);
                    if (userState == UserState.EXPIRED)
                    {
                        return new ResponseMessage
                        {
                            Code = BaseCode.Expired,
                            Message = BaseMessage.UserExpired,
                            UserExpDate = getUserExpDate(userInfo.Id)
                        };
                    }
                }

                if (userInfo.Password != request.Oldp)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.IncorrectPassword,
                                   Message = BaseMessage.IncorrectPassword
                               };
                }
                userInfo.Password = request.Newp;
                context.SubmitChanges();
                var securityTokens = (from s in context.SecurityToken
                                      where s.UserId == userInfo.Id
                                            && s.Status == (int)AppInfoStatus.Online
                                      select s).ToList();
                foreach (var token in securityTokens)
                {
                    token.Status = (int)AppInfoStatus.ChangePassword;
                    token.SignoutMethod = "AUTO";
                    token.SignoutDate = datetime;
                    context.SubmitChanges();
                }
                //
                securityToken.LastActDate = datetime;
                return new ResponseMessage
                           {
                               Code = BaseCode.Success,
                               Message = "Success"
                           };
            }
        }

        [HttpGet]
        public ResponseMessage ChangeExpiredDate([FromUri] ChangeExpDateRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var user = (from s in context.UserInfo where s.Id == new Guid(request.UserId) select s).FirstOrDefault();
                if (user != null && user.UserExpDate != null)
                {
                    user.UserExpDate = Convert.ToDateTime(request.ExpDate);
                    context.SubmitChanges();
                }
            }
            return new ResponseMessage
                       {
                           Code = BaseCode.Success,
                           Message = "Success"
                       };
        }

        [HttpPost]
        public ResponseMessage Register(RegisterRequest request)
        {
            if (!ModelState.IsValid || request == null)
            {
                return new ResponseMessage
                {
                    Code = 400,
                    Message = "Bad Request"
                };
            }

            if (string.IsNullOrEmpty(request.Username) ||
                string.IsNullOrEmpty(request.DeviceUniqueId))
            {
                return new ResponseMessage
                {
                    Code = 400,
                    Message = "Bad Request"
                };
            }

            // Check email is valid
            try
            {
                MailAddress m = new MailAddress(request.Username);
            }
            catch (FormatException)
            {
                return new ResponseMessage
                {
                    Code = 400,
                    Message = "Bad Request"
                };
            }



            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var existedUser = (from s in context.UserInfo
                                   where s.Username == request.Username
                                   select s).FirstOrDefault();
                if (existedUser != null)
                {
                    return new ResponseMessage
                    {
                        Code = BaseCode.UserExisted,
                        Message = "Username has already been registered"
                    };
                }

                // Begin to force each device just allow only one account
                //var existeDevice = (from s in context.UserInfo
                //                    where s.DeviceUniqueID == request.DeviceUniqueId
                //                    select s).FirstOrDefault();
                //if (existeDevice != null)
                //{
                //    return new ResponseMessage
                //    {
                //        Code = BaseCode.DeviceExisted,
                //        Message = "Device has already existed"
                //    };
                //}
                // end of checking device

                var userInfo = new UserInfo();

                userInfo.Id = Guid.NewGuid();
                userInfo.Username = request.Username;
                userInfo.Gender = !string.IsNullOrEmpty(request.Gender) ? request.Gender : "";
                userInfo.Avatar = !string.IsNullOrEmpty(request.Avatar) ? request.Avatar : "";
                userInfo.Firstname = !string.IsNullOrEmpty(request.FName) ? request.FName : "";
                userInfo.Lastname = !string.IsNullOrEmpty(request.LName) ? request.LName : "";
                userInfo.JobTitle = "";
                userInfo.LanguageId = request.LanguageId;
                //generate user's password if does not exist.
                userInfo.Password = Common.Utilities.Identity.Generate();
                userInfo.DeviceUniqueID = request.DeviceUniqueId;
                userInfo.DeviceType = request.DeviceType;

                var datatime = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                userInfo.CreateDate = datatime;
                userInfo.UserExpDate = DateTime.Now.AddDays(AccountSettings.NEW_ACCOUNT_DURATION);

                //mobileUser.
                context.UserInfo.InsertOnSubmit(userInfo);
                context.SubmitChanges();
                //Send mail to new user

                //get the email content.
                Email email = new Email();

                var subject = string.Empty;
                var bodyEmailText = string.Empty;
                var bodyEmail = string.Empty;

                //get email params infomations.
                //var pId = Common.Utilities.Identity.CreatePID(request.LanguageId, (int)Module.StorytellingLeader, UserType.Respondent.ToCharArray()[0]);
                ////---------------------------------------------//
                //var surveyLink = string.Format("{0}/{1}/{2}/{3}/{4}/{5}", Configuration.HostName, "Home", "Login", pId, item.Pwd, pWorkshop.ID);

                var name = Display.GetNameDisplay(userInfo.Firstname, userInfo.Lastname);

                using (var context2 = new PersonaMainDataContext(ConfigurationManager.AppSettings[ConnectionNames.MainDbConnectionStr]))
                {
                    // Check language to get email corresponding template
                    // @aMinh: Change email template here, find with the template name in PC2_Emails table
                    var emailTemp =
                        context2.PC2_Emails.FirstOrDefault(et => et.LanguageID == userInfo.LanguageId && et.EmailType==ConfigurationManager.AppSettings["MailTemplate"]) ??
                        context2.PC2_Emails.FirstOrDefault(et => et.LanguageID == 1 && et.EmailType==ConfigurationManager.AppSettings["MailTemplate"]);
                   
                    var uID = userInfo.Username;
                    var pwd = userInfo.Password;
                    string CompanyName = userInfo.CompanyId.ToString();
                    var partnerCompany = WebConfigurationManager.AppSettings["partnerCompany"];
                    var partnerEmail = WebConfigurationManager.AppSettings["partnerEmail"];
                    var partnerPhone = WebConfigurationManager.AppSettings["partnerPhone"]; ;
                    var partnerwebsite = WebConfigurationManager.AppSettings["partnerwebsite"];

                    //merge content.
                    if (emailTemp != null)
                    {
                        bodyEmailText = emailTemp.EmailText;
                        bodyEmailText = bodyEmailText.Replace("<Name>", name);
                        bodyEmailText = bodyEmailText.Replace("<SURVEY_LINK>", "");
                        bodyEmailText = bodyEmailText.Replace("<USERID>", uID);
                        bodyEmailText = bodyEmailText.Replace("<USERPASSWORD>", pwd);
                        bodyEmailText = bodyEmailText.Replace("<Partner_Company>", partnerCompany);
                        bodyEmailText = bodyEmailText.Replace("<Partner_Email>", partnerEmail);
                        bodyEmailText = bodyEmailText.Replace("<Partner_Phone>", partnerPhone);
                        bodyEmailText = bodyEmailText.Replace("<Partner_Website>", partnerwebsite);
                        // Participant message
                        //if (item.PartiMsg == null || string.IsNullOrEmpty(item.PartiMsg.Trim()))
                        //{
                        //    // remove text content <b> -> <p710>
                        //    int index = bodyEmailText.IndexOf("<P710>", StringComparison.Ordinal);
                        //    if (index >= 0)
                        //    {
                        //        bodyEmailText = bodyEmailText.Remove(0, index);
                        //    }
                        //}
                        //else
                        //{
                        //    bodyEmailText = bodyEmailText.Replace("<PARTIMSG>", item.PartiMsg);
                        //}
                        bodyEmailText = bodyEmailText.Replace("<P710>", string.Empty);

                    }
                    ////merge to template.
                    //if (emailTemp != null)
                    //{
                    //bodyEmail = emailTemp.EmailText.Replace("[Email Body]", bodyEmailText);
                    //}
                    //send email.
                    var emailer = new EmailRepository();
                    var sendEmailResult = emailer.SendEmail(new SendEmailRequest
                    {
                        //Body = bodyEmail,
                        Body = bodyEmailText,
                        Subject = emailTemp.SubjectText,
                        Recipient = userInfo.Username,
                        Sender = partnerEmail
                    });

                    if (!sendEmailResult.Success)
                    {
                        return new ResponseMessage
                        {
                            Code = BaseCode.SendEmailFaield,
                            Message = "Failed to send email"
                        };
                    }
                }

                //mark as email sent.
                //userInfo.EmailSent = 1;

                return SigninAfterRegister(userInfo.Username, userInfo.Password,
                    userInfo.DeviceUniqueID, 3);
            }

        }

        [HttpPost]
        public ResponseMessage UpdateMatrix(UpdateMatrixRequest request)
        {
            if (!ModelState.IsValid || request == null)
            {
                return new ResponseMessage
                {
                    Code = 400,
                    Message = "Bad request"
                };
            }

            if (request.Emotional == 0 || request.Dominance == 0)
            {
                return new ResponseMessage
                {
                    Code = 400,
                    Message = "Bad request"
                };
            }

            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                                     where s.Token == request.Token
                                     //&& s.Status == (int) AppInfoStatus.Online
                                     select s).FirstOrDefault();
                if (securityToken == null)
                {
                    return new ResponseMessage
                    {
                        Code = BaseCode.InvalidSessionId,
                        Message = BaseMessage.InvalidSessionId
                    };
                }

                var userInfo = (from s in context.UserInfo
                                where s.Id == securityToken.UserId
                                     && s.Status != 9
                                select s).FirstOrDefault();
                if (userInfo == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.IncorrectAccount,
                                   Message = "add request.UserId - Cannot find the user using the user ID:" + securityToken.UserId
                               };
                }

                userInfo.Emotional = request.Emotional;
                userInfo.Dominance = request.Dominance;

                context.SubmitChanges();

                return new ResponseMessage
                           {
                               Code = 200,
                               Message = "Success",
                               Result = null
                           };
            }
        }

        [HttpGet]
        public ResponseMessage GetRemainedDay([FromUri] Gameplan.WebService.Models.BaseRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                                     where s.Token == request.Token
                                     select s).FirstOrDefault();
                if (securityToken == null)
                {
                    return new ResponseMessage
                    {
                        Code = BaseCode.InvalidSessionId,
                        Message = BaseMessage.InvalidSessionId
                    };
                }

                var userInfo = (from s in context.UserInfo
                                where s.Id == securityToken.UserId
                                     && s.Status != 9
                                select s).FirstOrDefault();
                if (userInfo == null)
                {
                    return new ResponseMessage
                    {
                        Code = BaseCode.IncorrectAccount,
                        Message = "add request.UserId - Cannot find the user using the user ID:" + securityToken.UserId
                    };
                }

                var expiredDate = userInfo.UserExpDate.Value;

                var timeSpan = expiredDate - DateTime.Now;

                // if days < 60 and >= 1, we return days +1
                // if 0 < days < 1, we return 1
                // else return 0
                var dayLeft = timeSpan.Days > 0 ? timeSpan.Days+1 : 1;
                if (dayLeft == 1 && timeSpan.Seconds > 0)
                {
                    dayLeft = 1;
                }
                else if(dayLeft == 1 && timeSpan.Seconds <= 0)
                {
                    dayLeft = 0;
                }

                return new ResponseMessage
                {
                    Code = 200,
                    Message = "Success",
                    Result = dayLeft
                };
            }
        }

        [HttpGet]
        public ResponseMessage GetAvatarBase64([FromUri] Gameplan.WebService.Models.BaseRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                                     where s.Token == request.Token
                                     select s).FirstOrDefault();
                if (securityToken == null)
                {
                    return new ResponseMessage
                    {
                        Code = BaseCode.InvalidSessionId,
                        Message = BaseMessage.InvalidSessionId
                    };
                }

                var fileStorage = new FileStorageRepository();
                var base64 = fileStorage.GetAvatarBase64Data(securityToken.UserId);

                return new ResponseMessage
                {
                    Code = BaseCode.Success,
                    Message = BaseMessage.Success,
                    Result = base64
                };
            }
        }

        private ResponseMessage SigninAfterRegister(String userName, String password, String deviceID,
            int apiVersion)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var datetime = DateTime.Now.Ticks;
                var userInfo = (from s in context.UserInfo
                                where s.Username == userName
                                     && s.Password == password
                                     && s.Status != 9
                                     && (s.UserInitDate == 0 || s.UserInitDate <= datetime)
                                //&& (s.UserExpDate == 0 || s.UserExpDate >= datetime)
                                select s).FirstOrDefault();
                if (userInfo == null)
                {
                    return new ResponseMessage
                    {
                        Code = BaseCode.IncorrectAccount,
                        //Message = String.Format("Account Class - Cannot find the user using the user Id: {0} and password {1}.", request.UserId, request.Password)
                        Message = "add request.UserId - Cannot find the user using the user ID:" + userName
                    };
                }
                var token = Guid.NewGuid().ToString().Replace("-", "");
                var datatime = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                var securityToken = new SecurityToken
                {
                    Id = Guid.NewGuid(),
                    Token = token,
                    DeviceId = deviceID,
                    UserId = userInfo.Id,
                    Status = 0,
                    CreateDate = datatime,
                    SignoutDate = datatime,
                    SignoutMethod = "AUTO",
                    LastActDate = datatime,
                    DbVersion = 0
                };
                context.SecurityToken.InsertOnSubmit(securityToken);
                context.SubmitChanges();
                long version = 0;
                var dbVersion = (from s in context.DbVersion
                                 where s.UserId == userInfo.Id
                                 orderby s.Version descending
                                 select s).FirstOrDefault();
                if (dbVersion != null)
                    version = dbVersion.Version;
                var localization = "";
                var languageInfo = (from s in context.LanguageInfo
                                    where s.Id == userInfo.LanguageId
                                    select s).FirstOrDefault();
                if (languageInfo != null)
                    localization = languageInfo.Localization;

                long expiredTime = 0;
                if (userInfo.UserExpDate != null)
                {
                    DateTime userExpDate = userInfo.UserExpDate.Value;
                    expiredTime = Convert.ToInt64(userExpDate.ToUniversalTime()
                        .Subtract(new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc)).TotalMilliseconds);
                }

                var model = new UserModel
                {
                    UserId = userInfo.Id,
                    DisplayName = String.Format("{0} {1}", userInfo.Firstname, userInfo.Lastname),
                    FirstName = userInfo.Firstname,
                    LastName = userInfo.Lastname,
                    CompanyId = userInfo.CompanyId,
                    LanguageId = userInfo.LanguageId,
                    Emotional = userInfo.Emotional,
                    Dominance = userInfo.Dominance,
                    LocalizationName = localization,
                    Avatar = userInfo.Avatar,
                    JobTitle = userInfo.JobTitle,
                    Token = token,
                    DbVersion = version,
                    UserExpDate = expiredTime,
                    DeviceUniqueID=userInfo.DeviceUniqueID

                };
                var cacheKey = string.Format(Key, token);
                CacheManager.Set(cacheKey, model, 360);

                int code = BaseCode.Success;

                if (apiVersion == 3)
                {
                    UserState userState = getUserState(model.UserId);
                    if (userState == UserState.EXPIRED) code = BaseCode.Expired;
                    if (userState == UserState.WARNING) code = BaseCode.Warning;
                }

                return new ResponseMessage
                {
                    Code = code,
                    Message = "Success",
                    Result = model
                };
            }
        }
    }
}