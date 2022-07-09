using System;
using System.Collections.Generic;
using System.Linq;
using System.Transactions;
using System.Web.Http;
using Gameplan.Core;
using Gameplan.Core.Configuration;
using Gameplan.Core.Domain;
using Gameplan.Data;
using Gameplan.WebService.Models;
using Gameplan.WebService.Models.Contacts;

namespace Gameplan.WebService.Controllers
{
    public class ContactsController : BaseApiController
    {
        [HttpPost]
        public ResponseMessage Addnew(AddnewRequest request)
        {
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
                if (securityToken.Status == (int)AppInfoStatus.ChangePassword)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.ChangePassword,
                                   Message = BaseMessage.ChangePassword
                               };
                }
                if (securityToken.Status != (int)AppInfoStatus.Online)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.SessionTimeout,
                                   Message = BaseMessage.SessionTimeout
                               };
                }
                var userInfo = (from s in context.UserInfo
                                where s.Id == securityToken.UserId
                                select s).FirstOrDefault();
                if (userInfo == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.InvalidSessionId,
                                   Message = BaseMessage.InvalidSessionId
                               };
                }
                var datetime = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                //var contactId = Guid.NewGuid();
                var contactInfo = new ContactInfo
                                      {
                                          Id = request.RecordId,
                                          Firstname = request.Fname,
                                          Lastname = request.Lname,
                                          Avatar = request.Avatar,
                                          ProductId = request.ProductId,
                                          Gender = request.Gender,
                                          Age = request.Age,
                                          Email = request.Email,
                                          Phone = request.Phone,
                                          CreateDate = request.CreateDate,
                                          Address = request.Address,
                                          Comments = request.Comment,
                                          Status = request.Status,
                                          UserId = userInfo.Id
                                      };
                context.ContactInfo.InsertOnSubmit(contactInfo);
                context.SubmitChanges();
                var dbVersion = (from s in context.DbVersion
                                 where s.UserId == userInfo.Id
                                 orderby s.Version descending
                                 select s).FirstOrDefault();
                long version = 1;
                if (dbVersion != null)
                    version = dbVersion.Version + 1;
                dbVersion = new DbVersion
                                {
                                    UserId = userInfo.Id,
                                    TableName = "ContactInfo",
                                    RecordId = request.RecordId,
                                    Action = "C",
                                    Version = version,
                                    CreateDate = datetime
                                };
                context.DbVersion.InsertOnSubmit(dbVersion);
                context.SubmitChanges();
                securityToken.LastActDate = datetime;
                securityToken.DbVersion = version;
                context.SubmitChanges();
                return new ResponseMessage
                           {
                               Code = 200,
                               Message = "Success"
                           };
            }
        }

        [HttpGet]
        public ResponseMessage Completed([FromUri] CompletedRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                                     where s.Token == request.Token
                                           //&& s.Status == (int)AppInfoStatus.Online
                                     select s).FirstOrDefault();
                if (securityToken == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.InvalidSessionId,
                                   Message = BaseMessage.InvalidSessionId
                               };
                }
                if (securityToken.Status == (int)AppInfoStatus.ChangePassword)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.ChangePassword,
                                   Message = BaseMessage.ChangePassword
                               };
                }
                if (securityToken.Status != (int)AppInfoStatus.Online)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.SessionTimeout,
                                   Message = BaseMessage.SessionTimeout
                               };
                }
                var userInfo = (from s in context.UserInfo
                                where s.Id == securityToken.UserId
                                select s).FirstOrDefault();
                if (userInfo == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.InvalidSessionId,
                                   Message = BaseMessage.InvalidSessionId
                               };
                }
                var contactInfo = (from s in context.ContactInfo
                                   where s.Id == request.ContactId
                                         && s.UserId == userInfo.Id
                                   select s).FirstOrDefault();
                if (contactInfo == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.DataNotExist
                               };
                }
                var datetime = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                var completedId = Guid.NewGuid();
                var contactCompleted = new ContactCompleted
                                           {
                                               Id = completedId,
                                               ContactId = request.ContactId,
                                               UserId = userInfo.Id,
                                               MatrixValue = request.MatrixValue,
                                               GeneralFeedback = "",
                                               ProductFeedback = ""
                                           };
                context.ContactCompleted.InsertOnSubmit(contactCompleted);
                contactInfo.Status = 1;
                context.SubmitChanges();
                var dbVersion = (from s in context.DbVersion
                                 where s.UserId == userInfo.Id
                                 orderby s.Version descending
                                 select s).FirstOrDefault();
                long version = 1;
                if (dbVersion != null)
                    version = dbVersion.Version + 1;
                dbVersion = new DbVersion
                                {
                                    UserId = userInfo.Id,
                                    TableName = "ContactCompleted",
                                    RecordId = completedId,
                                    Action = "C",
                                    Version = version,
                                    CreateDate = datetime
                                };
                context.DbVersion.InsertOnSubmit(dbVersion);
                context.SubmitChanges();
                securityToken.LastActDate = datetime;
                securityToken.DbVersion = version;
                context.SubmitChanges();
                return new ResponseMessage
                           {
                               Code = 200,
                               Message = "Success"
                           };
            }
        }

        [HttpGet]
        public ResponseMessage Pending([FromUri] PendingRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                                     where s.Token == request.Token
                                           //&& s.Status == (int)AppInfoStatus.Online
                                     select s).FirstOrDefault();
                if (securityToken == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.InvalidSessionId,
                                   Message = BaseMessage.InvalidSessionId
                               };
                }
                if (securityToken.Status == (int)AppInfoStatus.ChangePassword)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.ChangePassword,
                                   Message = BaseMessage.ChangePassword
                               };
                }
                if (securityToken.Status != (int)AppInfoStatus.Online)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.SessionTimeout,
                                   Message = BaseMessage.SessionTimeout
                               };
                }
                var userInfo = (from s in context.UserInfo
                                where s.Id == securityToken.UserId
                                select s).FirstOrDefault();
                if (userInfo == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.InvalidSessionId,
                                   Message = BaseMessage.InvalidSessionId
                               };
                }
                var datetime = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                var pendingId = Guid.NewGuid();
                var contactPending = new ContactPending
                                         {
                                             Id = pendingId,
                                             ProductId = request.ProductId,
                                             ContactId = request.ContactId,
                                             UserId = userInfo.Id
                                         };
                context.ContactPending.InsertOnSubmit(contactPending);
                context.SubmitChanges();
                using (var transactionScope = new TransactionScope())
                {
                    foreach (var pendingQuestion in request.PendingQuestion.Select(question => new PendingQuestion
                                                                                                   {
                                                                                                       QuestionId = question.QuestionId,
                                                                                                       PendingId = pendingId,
                                                                                                       Score = question.Score
                                                                                                   }))
                    {
                        context.PendingQuestion.InsertOnSubmit(pendingQuestion);
                        context.SubmitChanges();
                    }
                    transactionScope.Complete();
                }
                var dbVersion = (from s in context.DbVersion
                                 where s.UserId == userInfo.Id
                                 orderby s.Version descending
                                 select s).FirstOrDefault();
                long version = 1;
                if (dbVersion != null)
                    version = dbVersion.Version + 1;
                dbVersion = new DbVersion
                                {
                                    UserId = userInfo.Id,
                                    TableName = "ContactPending",
                                    RecordId = pendingId,
                                    Action = "C",
                                    Version = version,
                                    CreateDate = datetime
                                };
                context.DbVersion.InsertOnSubmit(dbVersion);
                context.SubmitChanges();
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
        public ResponseMessage Edit([FromUri] EditRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                                     where s.Token == request.Token
                                           //&& s.Status == (int)AppInfoStatus.Online
                                     select s).FirstOrDefault();
                if (securityToken == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.InvalidSessionId,
                                   Message = BaseMessage.InvalidSessionId
                               };
                }
                if (securityToken.Status == (int)AppInfoStatus.ChangePassword)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.ChangePassword,
                                   Message = BaseMessage.ChangePassword
                               };
                }
                if (securityToken.Status != (int)AppInfoStatus.Online)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.SessionTimeout,
                                   Message = BaseMessage.SessionTimeout
                               };
                }
                var userInfo = (from s in context.UserInfo
                                where s.Id == securityToken.UserId
                                select s).FirstOrDefault();
                if (userInfo == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.InvalidSessionId,
                                   Message = BaseMessage.InvalidSessionId
                               };
                }
                var datetime = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                var contactInfo = (from s in context.ContactInfo
                                   where s.Id == request.ContactId
                                         && s.UserId == userInfo.Id
                                   select s).FirstOrDefault();
                if (contactInfo == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.DataNotExist
                               };
                }
                contactInfo.Firstname = request.Fname;
                contactInfo.Lastname = request.Lname;
                contactInfo.Avatar = request.Avatar;
                contactInfo.ProductId = request.ProductId;
                contactInfo.Gender = request.Gender;
                contactInfo.Age = request.Age;
                contactInfo.Email = request.Email;
                contactInfo.Phone = request.Phone;
                contactInfo.Address = request.Address;
                contactInfo.Comments = request.Comment;
                context.SubmitChanges();
                var dbVersion = (from s in context.DbVersion
                                 where s.UserId == userInfo.Id
                                 orderby s.Version descending
                                 select s).FirstOrDefault();
                long version = 1;
                if (dbVersion != null)
                    version = dbVersion.Version + 1;
                dbVersion = new DbVersion
                                {
                                    UserId = userInfo.Id,
                                    TableName = "ContactInfo",
                                    RecordId = contactInfo.Id,
                                    Action = "U",
                                    Version = version,
                                    CreateDate = datetime
                                };
                context.DbVersion.InsertOnSubmit(dbVersion);
                context.SubmitChanges();
                securityToken.LastActDate = datetime;
                securityToken.DbVersion = version;
                context.SubmitChanges();
                return new ResponseMessage
                           {
                               Code = 200,
                               Message = "Success"
                           };
            }
        }

        [HttpGet]
        public ResponseMessage Delete([FromUri] DeleteRequest request)
        {
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
                if (securityToken.Status == (int)AppInfoStatus.ChangePassword)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.ChangePassword,
                                   Message = BaseMessage.ChangePassword
                               };
                }
                if (securityToken.Status != (int)AppInfoStatus.Online)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.SessionTimeout,
                                   Message = BaseMessage.SessionTimeout
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
                var contactInfo = (from s in context.ContactInfo
                                   where s.Id == request.ContactId
                                         && s.UserId == userInfo.Id
                                   select s).FirstOrDefault();
                if (contactInfo == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.DataNotExist
                               };
                }
                context.ContactInfo.DeleteOnSubmit(contactInfo);
                context.SubmitChanges();
                var datetime = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                var dbVersion = (from s in context.DbVersion
                                 where s.UserId == userInfo.Id
                                 orderby s.Version descending
                                 select s).FirstOrDefault();
                long version = 1;
                if (dbVersion != null)
                    version = dbVersion.Version + 1;
                dbVersion = new DbVersion
                                {
                                    UserId = userInfo.Id,
                                    TableName = "ContactInfo",
                                    RecordId = contactInfo.Id,
                                    Action = "D",
                                    Version = version,
                                    CreateDate = datetime
                                };
                context.DbVersion.InsertOnSubmit(dbVersion);
                context.SubmitChanges();
                securityToken.LastActDate = datetime;
                securityToken.DbVersion = version;
                context.SubmitChanges();
                return new ResponseMessage
                           {
                               Code = 200,
                               Message = "Success"
                           };
            }
        }

        [HttpGet]
        public ContactModel Get([FromUri] GetRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                                     where s.Token == request.Token
                                           && s.Status == (int) AppInfoStatus.Online
                                     select s).FirstOrDefault();
                if (securityToken == null)
                    return null;
                var listener = (from s in context.ContactInfo
                                where s.Firstname.Equals(request.Fname)
                                      && s.Lastname.Equals(request.Lname)
                                select s).FirstOrDefault();
                if (listener == null)
                    return null;
                var model = new ContactModel
                                {
                                    Id = listener.Id,
                                    Firstname = listener.Firstname,
                                    Lastname = listener.Lastname,
                                    Gender = listener.Gender.Trim(),
                                    Age = listener.Age,
                                    Email = listener.Email,
                                    Phone = listener.Phone,
                                    CreateDate = listener.CreateDate,
                                    Address = listener.Address,
                                    ProductId = listener.ProductId,
                                    Comments = listener.Comments
                                };
                securityToken.LastActDate = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                context.SubmitChanges();
                return model;
            }
        }

        [HttpGet]
        public ResponseMessage GetById([FromUri] GetByIdRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                               where s.Token == request.Token
                                     && s.Status == (int) AppInfoStatus.Online
                               select s).FirstOrDefault();
                if (securityToken == null)
                    return null;
                var listener = (from s in context.ContactInfo
                                where s.Id == request.ContactId
                                select s).FirstOrDefault();
                if (listener == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.DataNotExist,
                                   Message = String.Format("Unable to find the survey user using the SurveyId: {0}.", request.ContactId)
                               };
                }
                var model = new ContactModel
                                {
                                    Id = listener.Id,
                                    Firstname = listener.Firstname,
                                    Lastname = listener.Lastname,
                                    Gender = listener.Gender.Trim(),
                                    Age = listener.Age,
                                    Email = listener.Email,
                                    Phone = listener.Phone,
                                    CreateDate = listener.CreateDate,
                                    Address = listener.Address,
                                    ProductId = listener.ProductId,
                                    Comments = listener.Comments
                                };
                securityToken.LastActDate = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                context.SubmitChanges();
                return new ResponseMessage
                           {
                               Code = BaseCode.Success,
                               Message = BaseMessage.Success,
                               Result = model
                           };
            }
        }

        [HttpGet]
        public List<ContactModel> GetByToken([FromUri] GetByTokenRequest request)
        {
            var pageNumber = 0;
            if (request.Page.HasValue)
                pageNumber = request.Page.Value;
            if (pageNumber > 0)
                pageNumber = pageNumber - 1;
            int pageSize = 20;
            if (request.Size.HasValue)
                pageSize = request.Size.Value;
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                               where s.Token == request.Token
                                     && s.Status == (int) AppInfoStatus.Online
                               select s).FirstOrDefault();
                if (securityToken == null)
                    return null;
                var mobileUser = (from s in context.ContactInfo
                                  where s.UserId == securityToken.UserId
                                  select s).FirstOrDefault();
                if (mobileUser == null)
                    return null;
                var listeners = (from s in context.ContactInfo
                                 where s.UserId == mobileUser.Id
                                 select s);
                var model = (from s in new PagedList<ContactInfo>(listeners, pageNumber, pageSize)
                             select new ContactModel
                                        {
                                            Id = s.Id,
                                            DisplayName = string.Format("{0} {1}", s.Firstname, s.Lastname)
                                        }).ToList();
                securityToken.LastActDate = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                context.SubmitChanges();
                return model;
            }
        }
    }
}
