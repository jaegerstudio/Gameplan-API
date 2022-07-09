using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using System.Web.Script.Serialization;
using Gameplan.Core.Configuration;
using Gameplan.Core.Domain;
using Gameplan.Data;
using Gameplan.WebService.Models;
using Gameplan.WebService.Models.Sync;
using System.IO;

namespace Gameplan.WebService.Controllers
{
    public class SyncController : BaseApiController
    {
        [HttpPost]
        public string Test(string token)
        {
            return token + " - OK";
        }

        [HttpPost]
        public ResponseMessage Checkin(CheckinRequest request)
        {
            if (request == null)
            {
                return new ResponseMessage
                {
                    Code = BaseCode.DataPostBlank,
                    Message = BaseMessage.DataPostBlank
                };
            }
            if (request.Data == null)
            {
                return new ResponseMessage
                {
                    Code = BaseCode.DataPostInvalid,
                    Message = BaseMessage.DataPostInvalid
                };
            }
            //object data = request.Data;
            if (string.IsNullOrEmpty(request.Token))
            {
                return new ResponseMessage
                {
                    Code = BaseCode.DataNotExist,
                    Message = "Authentication code does not exist"
                };
            }

            var listIncompleteItems = new List<Guid>();

            try
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

                    if (request.ApiVersion == 3)
                    {
                        UserState userState = this.getUserState(securityToken.UserId);
                        if (userState == UserState.EXPIRED)
                        {
                            return new ResponseMessage
                            {
                                Code = BaseCode.Expired,
                                Message = BaseMessage.UserExpired,
                                UserExpDate = getUserExpDate(securityToken.UserId)
                            };
                        }
                    }
                    

                    if (securityToken.Status == (int) AppInfoStatus.ChangePassword)
                    {
                        return new ResponseMessage
                        {
                            Code = BaseCode.ChangePassword,
                            Message = BaseMessage.ChangePassword
                        };
                    }
                    if (securityToken.Status != (int) AppInfoStatus.Online)
                    {
                        return new ResponseMessage
                        {
                            Code = BaseCode.SessionTimeout,
                            Message = BaseMessage.SessionTimeout
                        };
                    }
                    //var version = (DbVersionModel) request.Data;
                    var oDeSerializer = new JavaScriptSerializer();

                    DbVersionModel version = null;

                    //string path = String.Format("C:\\Users\\Public\\{0}.txt", DateTime.Now.ToString("hh-mm-ss"));

                    //File.WriteAllText(path, request.ToString());


                    foreach (var data in request.Data)
                    {
                        try
                        {
                            version = oDeSerializer.Deserialize<DbVersionModel>(data.ToString());
                            if (version.TableName == "ContactInfo")
                                CudContactInfo(version, securityToken, oDeSerializer, context);
                            if (version.TableName == "ContactCompleted")
                                CudContactCompleted(version, oDeSerializer, securityToken, context);
                            if (version.TableName == "ContactPending")
                                CudContactPending(version, context, securityToken, oDeSerializer);
                            if (version.TableName == "NotesInfo")
                                CudNotesInfo(version, securityToken, oDeSerializer, context);
                            if (version.TableName == "EventInfo")
                                CudEventInfo(version, securityToken, oDeSerializer, context);
                            if (version.TableName == "Reminders")
                                CudRemidersInfo(version, securityToken, oDeSerializer, context);
                            if (version.TableName == "ContactEvent")
                                CudContactEventInfo(version, securityToken, oDeSerializer, context);

                            UpdateDbVersion(context, securityToken, version);
                        }
                        catch (Exception e)
                        {

                            //string pathError = String.Format("C:\\Users\\Public\\error{0}.txt", DateTime.Now.ToString("hh-mm-ss"));

                            //File.WriteAllText(pathError, e.Message);

                            if (version != null && version.Action == "C")
                                listIncompleteItems.Add(version.RecordSyncId);
                            //Continue update data
                        }
                    }

                    var count1 = GetDbVersion(context, securityToken);

                    if (listIncompleteItems.Count > 0)
                    {
                        return new ResponseMessage
                        {
                            Code = BaseCode.UpdateDataError,
                            Message = BaseMessage.UpdateDataError,
                            Result = new
                            {
                                DbVersion = count1,
                                errorItems = string.Join(",", listIncompleteItems.ToArray())
                            }
                        };
                    }

                    return new ResponseMessage
                    {
                        Code = BaseCode.Success,
                        Message = BaseMessage.Success,
                        Result = new
                        {
                            DbVersion = count1,
                            errorItems = ""
                        }
                    };
                }
            }
            catch (Exception e)
            {
                var dbVersion = 0f;
                using (var context = new MobileGameplan(DbConn.ConnectStr))
                {
                    var securityToken = (from s in context.SecurityToken
                        where s.Token == request.Token
                              && s.Status == (int) AppInfoStatus.Online
                        select s).FirstOrDefault();
                    dbVersion = GetDbVersion(context, securityToken);
                }
                return new ResponseMessage
                {
                    Code = BaseCode.UpdateDataError,
                    Message = BaseMessage.UpdateDataError + " -> " + e.Message,
                    Result = new
                    {
                        DbVersion = dbVersion,
                        errorItems = ""
                    }
                };
            }
        }

        private static void UpdateDbVersion(MobileGameplan context, SecurityToken securityToken, DbVersionModel version)
        {
            var dbVersion = (from s in context.DbVersion
                where s.UserId == securityToken.UserId
                orderby s.Version descending
                select s).FirstOrDefault();
            long count = 1;
            var datetime = (long) (DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
            if (dbVersion != null)
                count = dbVersion.Version;
            dbVersion = new DbVersion
            {
                Id = Guid.NewGuid(),
                TableName = version.TableName,
                RecordId = version.RecordId,
                Action = version.Action,
                Version = count + 1,
                UserId = securityToken.UserId,
                CreateDate = datetime
            };
            context.DbVersion.InsertOnSubmit(dbVersion);
            context.SubmitChanges();
        }

        private static long GetDbVersion(MobileGameplan context, SecurityToken securityToken)
        {
            var dbVersion1 = (from s in context.DbVersion
                where s.UserId == securityToken.UserId
                orderby s.Version descending
                select s).FirstOrDefault();
            long count1 = 1;
            if (dbVersion1 != null)
                count1 = dbVersion1.Version;
            return count1;
        }

        private static void CudContactInfo(DbVersionModel version, SecurityToken securityToken,
            JavaScriptSerializer oDeSerializer, MobileGameplan context)
        {
            if (version.Action == "C")
            {
                //var contact = (ContactModel)version.Data;
                var temp = oDeSerializer.Serialize(version.Data);
                var contact = oDeSerializer.Deserialize<ContactModel>(temp);
                //var datetime = (long) (DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                var contactInfo = new ContactInfo
                {
                    Id = contact.Id,
                    UserId = securityToken.UserId,
                    Firstname = contact.Firstname,
                    Lastname = contact.Lastname,
                    Avatar = contact.Avatar,
                    ProductId = contact.ProductId,
                    Gender = contact.Gender,
                    Age = contact.Age,
                    Email = contact.Email,
                    Phone = contact.Phone,
                    Address = contact.Address,
                    Comments = contact.Comments,
                    Status = contact.Status,
                    CreateDate = contact.CreateDate
                };
                context.ContactInfo.InsertOnSubmit(contactInfo);
                context.SubmitChanges();
            }
            if (version.Action == "U")
            {
                //var contact = (ContactModel)version.Data;
                var temp = oDeSerializer.Serialize(version.Data);
                var contact = oDeSerializer.Deserialize<ContactModel>(temp);
                var contactInfo = (from s in context.ContactInfo
                    where s.Id == version.RecordId
                          && s.UserId == securityToken.UserId
                    select s).FirstOrDefault();
                if (contactInfo != null)
                {
                    contactInfo.Firstname = contact.Firstname;
                    contactInfo.Lastname = contact.Lastname;
                    contactInfo.Avatar = contact.Avatar;
                    contactInfo.ProductId = contact.ProductId;
                    contactInfo.Gender = contact.Gender;
                    contactInfo.Age = contact.Age;
                    contactInfo.Email = contact.Email;
                    contactInfo.Phone = contact.Phone;
                    contactInfo.Address = contact.Address;
                    contactInfo.Comments = contact.Comments;
                    contactInfo.Status = contact.Status;
                    context.SubmitChanges();
                }
            }
            if (version.Action == "D")
            {
                var contactInfo = (from s in context.ContactInfo
                    where s.Id == version.RecordId
                          && s.UserId == securityToken.UserId
                    select s).FirstOrDefault();
                if (contactInfo != null)
                {
                    context.ContactInfo.DeleteOnSubmit(contactInfo);
                    context.SubmitChanges();
                }
            }
        }

        private static void CudContactCompleted(DbVersionModel version, JavaScriptSerializer oDeSerializer,
            SecurityToken securityToken, MobileGameplan context)
        {
            if (version.Action == "C")
            {
                //var completed = (ContactCompletedModel)version.Data;
                var temp = oDeSerializer.Serialize(version.Data);
                var completed = oDeSerializer.Deserialize<ContactCompletedModel>(temp);
                var contactCompleted = new ContactCompleted
                {
                    Id = completed.Id,
                    ContactId = completed.ContactId,
                    MatrixValue = completed.MatrixValue,
                    GeneralFeedback = completed.GeneralFeedback,
                    ProductFeedback = completed.ProductFeedback,
                    UserId = securityToken.UserId
                };
                context.ContactCompleted.InsertOnSubmit(contactCompleted);
                context.SubmitChanges();
            }
            if (version.Action == "U")
            {
                //var completed = (ContactCompletedModel)version.Data;
                var temp = oDeSerializer.Serialize(version.Data);
                var completed = oDeSerializer.Deserialize<ContactCompletedModel>(temp);
                var contactCompleted = (from s in context.ContactCompleted
                    where s.Id == version.RecordId
                          && s.UserId == securityToken.UserId
                    select s).FirstOrDefault();
                if (contactCompleted != null)
                {
                    contactCompleted.MatrixValue = completed.MatrixValue;
                    contactCompleted.GeneralFeedback = completed.GeneralFeedback;
                    contactCompleted.ProductFeedback = completed.ProductFeedback;
                    context.SubmitChanges();
                }
            }
            if (version.Action == "D")
            {
                var contactCompleted = (from s in context.ContactCompleted
                    where s.Id == version.RecordId
                          && s.UserId == securityToken.UserId
                    select s).FirstOrDefault();
                if (contactCompleted != null)
                {
                    context.ContactCompleted.DeleteOnSubmit(contactCompleted);
                    context.SubmitChanges();
                }
            }
        }

        private static void CudContactPending(DbVersionModel version, MobileGameplan context,
            SecurityToken securityToken,
            JavaScriptSerializer oDeSerializer)
        {
            if (version.Action == "C")
            {
                //var pending = (ContactPendingModel)version.Data;
                var temp = oDeSerializer.Serialize(version.Data);
                var pending = oDeSerializer.Deserialize<ContactPendingModel>(temp);
                var contactPending = new ContactPending
                {
                    Id = pending.Id,
                    ProductId = pending.ProductId,
                    ContactId = pending.ContactId,
                    UserId = securityToken.UserId
                };
                context.ContactPending.InsertOnSubmit(contactPending);
                context.SubmitChanges();
                foreach (var question in pending.Question)
                {
                    //var quest = (PendingQuestionModel)question;
                    var temp1 = oDeSerializer.Serialize(question);
                    var quest = oDeSerializer.Deserialize<PendingQuestionModel>(temp1);
                    var questionInfo = new PendingQuestion
                    {
                        QuestionId = quest.QuestionId,
                        PendingId = pending.Id,
                        Score = quest.Score
                    };
                    context.PendingQuestion.InsertOnSubmit(questionInfo);
                    context.SubmitChanges();
                }
            }
            if (version.Action == "U")
            {
                //var pending = (ContactPendingModel)version.Data;
                var temp = oDeSerializer.Serialize(version.Data);
                var pending = oDeSerializer.Deserialize<ContactPendingModel>(temp);
                var contactPending = (from s in context.ContactPending
                    where s.Id == version.RecordId
                          && s.ContactId == pending.ContactId
                          && s.UserId == securityToken.UserId
                    select s).FirstOrDefault();
                if (contactPending != null)
                {
                    contactPending.ProductId = pending.ProductId;
                    context.SubmitChanges();
                    foreach (var question in pending.Question)
                    {
                        //var quest = (PendingQuestionModel)question;
                        var temp1 = oDeSerializer.Serialize(question);
                        var quest = oDeSerializer.Deserialize<PendingQuestionModel>(temp1);
                        var questionInfo = (from s in context.PendingQuestion
                            where s.QuestionId == quest.QuestionId
                                  && s.PendingId == version.RecordId
                            select s).FirstOrDefault();
                        if (questionInfo != null)
                        {
                            questionInfo.Score = quest.Score;
                            context.SubmitChanges();
                        }
                    }
                }
            }
            if (version.Action == "D")
            {
                var contactPending = (from s in context.ContactPending
                    where s.Id == version.RecordId
                          && s.UserId == securityToken.UserId
                    select s).FirstOrDefault();
                if (contactPending != null)
                {
                    var questions = (from s in context.PendingQuestion
                        where s.PendingId == version.RecordId
                        select s).ToList();
                    foreach (var question in questions)
                    {
                        context.PendingQuestion.DeleteOnSubmit(question);
                        context.SubmitChanges();
                    }
                    context.ContactPending.DeleteOnSubmit(contactPending);
                    context.SubmitChanges();
                }
            }
        }

        private static void CudNotesInfo(DbVersionModel version, SecurityToken securityToken,
            JavaScriptSerializer oDeSerializer, MobileGameplan context)
        {
            if (version.Action == "C")
            {
                //var notes = (NoteModel) version.Data;
                var temp = oDeSerializer.Serialize(version.Data);
                var notes = oDeSerializer.Deserialize<NoteModel>(temp);
                var datetime = (DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                var notesInfo = new NotesInfo
                {
                    Id = notes.NoteId,
                    Title = notes.Title,
                    Description = notes.Detail,
                    CreateDate = (long) datetime,
                    UserId = securityToken.UserId
                };
                context.NotesInfo.InsertOnSubmit(notesInfo);
                context.SubmitChanges();
            }
            if (version.Action == "U")
            {
                var notesInfo = (from s in context.NotesInfo
                    where s.Id == version.RecordId
                          && s.UserId == securityToken.UserId
                    select s).FirstOrDefault();
                if (notesInfo != null)
                {
                    //var notes = (NoteModel)version.Data;
                    var temp = oDeSerializer.Serialize(version.Data);
                    var notes = oDeSerializer.Deserialize<NoteModel>(temp);
                    notesInfo.Title = notes.Title;
                    notesInfo.Description = notes.Detail;
                    context.SubmitChanges();
                }
            }
            if (version.Action == "D")
            {
                var notesInfo = (from s in context.NotesInfo
                    where s.Id == version.RecordId
                          && s.UserId == securityToken.UserId
                    select s).FirstOrDefault();
                if (notesInfo != null)
                {
                    context.NotesInfo.DeleteOnSubmit(notesInfo);
                    context.SubmitChanges();
                }
            }
        }

        private static void CudEventInfo(DbVersionModel version, SecurityToken securityToken,
            JavaScriptSerializer oDeSerializer, MobileGameplan context)
        {
            if (version.Action == "C")
            {
                var temp = oDeSerializer.Serialize(version.Data);
                var notes = oDeSerializer.Deserialize<EventModel>(temp);
                var datetime = (DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                var eventInfo = new EventInfo
                {
                    Id = notes.EventId,
                    Title = notes.Title,
                    Description = notes.Description,
                    FromTime = notes.FromTime,
                    ToTime = notes.ToTime,
                    EventColorId = notes.EventColorId,
                    RepeatId = notes.RepeatId,
                    LocationName = notes.LocationName,
                    Longitude = notes.Longitude,
                    Latitude = notes.Latitude,
                    CreateDate = (long) datetime,
                    UserId = securityToken.UserId
                };
                context.EventInfo.InsertOnSubmit(eventInfo);
                context.SubmitChanges();
            }
            if (version.Action == "U")
            {
                var eventInfo = (from s in context.EventInfo
                                 where s.Id == version.RecordId
                                       && s.UserId == securityToken.UserId
                                 select s).FirstOrDefault();
                if (eventInfo != null)
                {
                    var temp = oDeSerializer.Serialize(version.Data);
                    var notes = oDeSerializer.Deserialize<EventModel>(temp);
                    eventInfo.Title = notes.Title;
                    eventInfo.Description = notes.Description;
                    eventInfo.FromTime = notes.FromTime;
                    eventInfo.ToTime = notes.ToTime;
                    eventInfo.EventColorId = notes.EventColorId;
                    eventInfo.RepeatId = notes.RepeatId;
                    eventInfo.LocationName = notes.LocationName;
                    eventInfo.Longitude = notes.Longitude;
                    eventInfo.Latitude = notes.Latitude;
                    context.SubmitChanges();
                }
            }
            if (version.Action == "D")
            {
                var eventInfo = (from s in context.EventInfo
                    where s.Id == version.RecordId
                          && s.UserId == securityToken.UserId
                    select s).FirstOrDefault();
                if (eventInfo != null)
                {
                    context.EventInfo.DeleteOnSubmit(eventInfo);
                    context.SubmitChanges();
                }
            }
        }

        private static void CudRemidersInfo(DbVersionModel version, SecurityToken securityToken,
            JavaScriptSerializer oDeSerializer, MobileGameplan context)
        {
            if (version.Action == "C")
            {
                var temp = oDeSerializer.Serialize(version.Data);
                var notes = oDeSerializer.Deserialize<RemiderModel>(temp);
                var remiders = new Remiders
                {
                    Id = notes.ReminderId,
                    EventId = notes.EventId,
                    Time = notes.Time,
                    UserId = securityToken.UserId
                };
                context.Remiders.InsertOnSubmit(remiders);
                context.SubmitChanges();
            }
            if (version.Action == "U")
            {
                var remiders = (from s in context.Remiders
                    where s.Id == version.RecordId
                          && s.UserId == securityToken.UserId
                    select s).FirstOrDefault();
                if (remiders != null)
                {
                    var temp = oDeSerializer.Serialize(version.Data);
                    var notes = oDeSerializer.Deserialize<RemiderModel>(temp);
                    remiders.EventId = notes.EventId;
                    remiders.Time = notes.Time;
                    context.SubmitChanges();
                }
            }
            if (version.Action == "D")
            {
                var remiders = (from s in context.Remiders
                    where s.Id == version.RecordId
                          && s.UserId == securityToken.UserId
                    select s).FirstOrDefault();
                if (remiders != null)
                {
                    context.Remiders.DeleteOnSubmit(remiders);
                    context.SubmitChanges();
                }
            }
        }

        private static void CudContactEventInfo(DbVersionModel version, SecurityToken securityToken,
            JavaScriptSerializer oDeSerializer, MobileGameplan context)
        {
            if (version.Action == "C")
            {
                var temp = oDeSerializer.Serialize(version.Data);
                var notes = oDeSerializer.Deserialize<ContactEventModel>(temp);
                var contactEvent = new ContactEvent
                {
                    Id = notes.ContactEventId,
                    EventId = notes.EventId,
                    ContactId = notes.ContactId,
                    UserId = securityToken.UserId
                };
                context.ContactEvent.InsertOnSubmit(contactEvent);
                context.SubmitChanges();
            }
            if (version.Action == "U")
            {
            }
            if (version.Action == "D")
            {
                var contactEvent = (from s in context.ContactEvent
                    where s.Id == version.RecordId
                          && s.UserId == securityToken.UserId
                    select s).FirstOrDefault();
                if (contactEvent != null)
                {
                    context.ContactEvent.DeleteOnSubmit(contactEvent);
                    context.SubmitChanges();
                }
            }
        }

        [HttpGet]
        public CheckoutModel Checkout([FromUri] CheckoutRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var checkoutToken = Guid.NewGuid().ToString().Replace("-", "");
                var securityToken = (from s in context.SecurityToken
                    where s.Token == request.Token
                          && s.Status == (int)AppInfoStatus.Online
                    select s).FirstOrDefault();

                if (securityToken == null)
                {
                    if (request.ApiVersion == 3)
                    {
                        return new CheckoutModel
                        {
                            Code = BaseCode.InvalidSessionId,
                            Message = BaseMessage.InvalidSessionId
                        };
                    }
                    else
                    {
                        return null;    
                    }
                }
                    

                int code = BaseCode.Success;
                string message = BaseMessage.Success;

                var model = new List<DbVersionModel>();

                if (request.ApiVersion == 3)
                {
                    UserState userState = this.getUserState(securityToken.UserId);
                    if (userState == UserState.EXPIRED)
                    {
                        code = BaseCode.Expired;
                        message = BaseMessage.UserExpired;
                    }

                    if (request.CheckoutType == 2) // checkout manual
                    {

                        if (userState == UserState.EXPIRED)
                        {
                            return new CheckoutModel
                            {
                                Code = code,
                                Message = message,
                                UserExpDate = getUserExpDate(securityToken.UserId),
                                Data = model
                            };
                        }
                    }
                }

                var tmp = (from s in context.DbVersion
                    where s.UserId == securityToken.UserId
                          && s.Version > request.Version
                          && s.RecordId != Guid.Empty
                    select s);
                if (request.Version == 0)
                    tmp = tmp.Where(x => x.Action == "C");
                var dbVersions = tmp.OrderBy(x => x.CreateDate).ToList();
                

                CollectStaticData(request, context, model, securityToken);

                foreach (var version in dbVersions)
                {
                    var m = new DbVersionModel
                    {
                        TableName = version.TableName,
                        RecordId = version.RecordId,
                        Action = version.Action.Trim(),
                        Version = version.Version,
                        CreateDate = version.CreateDate,
                        Data = new List<object>()
                    };
                    if (version.TableName == "ContactInfo")
                    {
                        var contactInfo = (from s in context.ContactInfo
                            where s.Id == version.RecordId
                            select s).FirstOrDefault();
                        if (contactInfo != null)
                        {
                            var retModel = new ContactModel
                            {
                                Id = contactInfo.Id,
                                Firstname = contactInfo.Firstname,
                                Lastname = contactInfo.Lastname,
                                Avatar = contactInfo.Avatar,
                                ProductId = contactInfo.ProductId,
                                Gender = contactInfo.Gender.Trim(),
                                Age = contactInfo.Age,
                                Email = contactInfo.Email,
                                Phone = contactInfo.Phone,
                                Address = contactInfo.Address,
                                Comments = contactInfo.Comments,
                                Status = contactInfo.Status,
                                CreateDate = contactInfo.CreateDate
                            };
                            m.Data = new[] {retModel};
                        }
                    }
                    if (version.TableName == "ContactCompleted")
                    {
                        var completed = (from s in context.ContactCompleted
                            where s.Id == version.RecordId
                            select s).FirstOrDefault();
                        if (completed != null)
                        {
                            var retModel = new ContactCompletedModel
                            {
                                Id = completed.Id,
                                ContactId = completed.ContactId,
                                MatrixValue = completed.MatrixValue,
                                GeneralFeedback = completed.GeneralFeedback,
                                ProductFeedback = completed.ProductFeedback
                            };
                            m.Data = new[] {retModel};
                        }
                    }
                    if (version.TableName == "ContactPending")
                    {
                        var pendings = (from s in context.ContactPending
                            where s.Id == version.RecordId
                            select s).ToList();
                        m.Data = (from pending in pendings
                            let questions = (from s in context.PendingQuestion
                                where s.PendingId == pending.Id
                                select s).ToList()
                            let questionModels = questions.Select(question => new PendingQuestionModel
                            {
                                QuestionId = question.QuestionId,
                                Score = question.Score
                            }).Cast<object>().ToList()
                            select new ContactPendingModel
                            {
                                Id = pending.Id,
                                ContactId = pending.ContactId,
                                ProductId = pending.ProductId,
                                Question = questionModels
                            }).Cast<object>().ToList();
                    }
                    if (version.TableName == "NotesInfo")
                    {
                        var notesInfo = (from s in context.NotesInfo
                            where s.Id == version.RecordId
                            select s).FirstOrDefault();
                        if (notesInfo != null)
                        {
                            var retModel = new NoteModel
                            {
                                NoteId = notesInfo.Id,
                                Title = notesInfo.Title,
                                Detail = notesInfo.Description,
                                CreateDate = notesInfo.CreateDate
                            };
                            m.Data = new[] {retModel};
                        }
                    }
                    if (version.TableName == "EventInfo")
                    {
                        var eventInfo = (from s in context.EventInfo
                                         where s.Id == version.RecordId
                                         select s).FirstOrDefault();
                        if (eventInfo != null)
                        {
                            var retModel = new EventModel
                            {
                                EventId = eventInfo.Id,
                                Title = eventInfo.Title,
                                Description = eventInfo.Description,
                                FromTime = eventInfo.FromTime,
                                ToTime = eventInfo.ToTime,
                                EventColorId = eventInfo.EventColorId,
                                RepeatId = eventInfo.RepeatId,
                                LocationName = eventInfo.LocationName,
                                Longitude = eventInfo.Longitude,
                                Latitude = eventInfo.Latitude,
                                CreateDate = eventInfo.CreateDate
                            };
                            m.Data = new[] { retModel };
                        }
                    }
                    if (version.TableName == "Reminders")
                    {
                        var remiders = (from s in context.Remiders
                                         where s.Id == version.RecordId
                                         select s).FirstOrDefault();
                        if (remiders != null)
                        {
                            var retModel = new RemiderModel
                            {
                                ReminderId = remiders.Id,
                                EventId = remiders.EventId,
                                Time = remiders.Time
                            };
                            m.Data = new[] { retModel };
                        }
                    }
                    if (version.TableName == "ContactEvent")
                    {
                        var contactEvent = (from s in context.ContactEvent
                                         where s.Id == version.RecordId
                                         select s).FirstOrDefault();
                        if (contactEvent != null)
                        {
                            var retModel = new ContactEventModel
                            {
                                ContactEventId = contactEvent.Id,
                                EventId = contactEvent.EventId,
                                ContactId = contactEvent.ContactId
                            };
                            m.Data = new[] {retModel};
                        }
                    }
                    if ((m.Action.Trim() == "C" || m.Action.Trim() == "U") && m.Data != null)
                        model.Add(m);
                    if (m.Action.Trim() == "D")
                        model.Add(m);
                }
                return new CheckoutModel
                {
                    Code = code,
                    Message = message,
                    UserExpDate = getUserExpDate(securityToken.UserId),
                    CheckoutToken = checkoutToken,
                    Data = model
                };
            }
        }

        private static void CollectStaticData(CheckoutRequest request, MobileGameplan context,
            List<DbVersionModel> model, SecurityToken securityToken)
        {
            if (request.Version == 0)
            {
                var countryInfos = (from s in context.CountryInfo
                    select s).ToList();
                model.Add(new DbVersionModel
                {
                    TableName = "CountryInfo",
                    RecordId = Guid.Empty,
                    Action = "C",
                    Data = countryInfos.Select(countryInfo => new CountryModel
                    {
                        CountryId = countryInfo.Id,
                        CountryCode = countryInfo.Code.Trim(),
                        CountryName = countryInfo.Name
                    }).ToList()
                });
                var productInfos = (from s in context.ProductInfo
                    select s).ToList();
                model.Add(new DbVersionModel
                {
                    TableName = "ProductInfo",
                    RecordId = Guid.Empty,
                    Action = "C",
                    Data = productInfos.Select(productInfo => new ProductModel
                    {
                        ProductId = productInfo.Id,
                        ProductName = productInfo.Name,
                        CompanyId = productInfo.CompanyId
                    }).ToList()
                });
                var questionInfos = (from s in context.QuestionInfo
                    select s).ToList();
                model.Add(new DbVersionModel
                {
                    TableName = "QuestionInfo",
                    RecordId = Guid.Empty,
                    Action = "C",
                    Data = questionInfos.Select(questionInfo => new QuestionModel
                    {
                        QuestionId = questionInfo.Id,
                        Number = questionInfo.Number,
                        QuestionText1 = questionInfo.QuesText1,
                        QuestionText2 = questionInfo.QuesText2,
                        QuestionType = questionInfo.QuesType,
                        LanguageId = questionInfo.LanguageId
                    }).ToList()
                });
                var repeats = (from s in context.Repeats
                    select s).ToList();
                model.Add(new DbVersionModel
                {
                    TableName = "Repeats",
                    RecordId = Guid.Empty,
                    Action = "C",
                    Data = repeats.Select(repeat => new RepeatsModel
                    {
                        Id = repeat.Id,
                        Name = repeat.Name,
                        Type = repeat.Type
                    }).ToList()
                });
                var eventColors = (from s in context.EventColor
                    select s).ToList();
                model.Add(new DbVersionModel
                {
                    TableName = "EventColor",
                    RecordId = Guid.Empty,
                    Action = "C",
                    Data = eventColors.Select(eventColor => new EventColorModel
                    {
                        Id = eventColor.Id,
                        Name = eventColor.Name,
                        ColorHex = eventColor.ColorHex
                    }).ToList()
                });
                var dbVersion = new DbVersion
                {
                    Id = Guid.NewGuid(),
                    TableName = "",
                    RecordId = Guid.Empty,
                    Action = "",
                    Version = 1,
                    UserId = securityToken.UserId,
                    CreateDate = (long) (DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds
                };
                context.DbVersion.InsertOnSubmit(dbVersion);
                context.SubmitChanges();
            }
        }

        [HttpGet]
        public ResponseMessage CheckoutComplete([FromUri] CheckoutCompleteRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                    where s.Token == request.Token
                          && s.Status == (int) AppInfoStatus.Online
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
                        Code = BaseCode.InvalidSessionId,
                        Message = BaseMessage.InvalidSessionId
                    };
                }
                var dbVersion = (from s in context.DbVersion
                    where s.UserId == securityToken.UserId
                    orderby s.Version descending
                    select s).FirstOrDefault();
                long count = 1;
                if (dbVersion != null)
                    count = dbVersion.Version;
                return new ResponseMessage
                {
                    Code = BaseCode.Success,
                    Message = BaseMessage.Success,
                    Result = count
                };
            }
        }
    }
}
