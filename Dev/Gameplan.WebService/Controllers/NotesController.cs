using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using Gameplan.Core;
using Gameplan.Core.Configuration;
using Gameplan.Core.Domain;
using Gameplan.Data;
using Gameplan.WebService.Models;
using Gameplan.WebService.Models.Notes;

namespace Gameplan.WebService.Controllers
{
    public class NotesController : BaseApiController
    {
        [HttpGet]
        public ResponseMessage Addnew([FromUri] AddnewRequest request)
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
                                   Code = BaseCode.DataNotExist
                               };
                }
                var datetime = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                var notesInfo = new NotesInfo
                                    {
                                        Id = Guid.NewGuid(),
                                        UserId = userInfo.Id,
                                        Title = request.Title,
                                        Description = request.Detail,
                                        CreateDate = datetime,
                                    };
                context.NotesInfo.InsertOnSubmit(notesInfo);
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
                                    TableName = "NotesInfo",
                                    RecordId = notesInfo.Id,
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
                var notesInfo = (from s in context.NotesInfo
                                 where s.Id == request.NoteId
                                 select s).FirstOrDefault();
                if (notesInfo == null)
                {
                    return new ResponseMessage
                               {
                                   Code = BaseCode.DataNotExist
                               };
                }
                context.NotesInfo.DeleteOnSubmit(notesInfo);
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
                                    TableName = "NotesInfo",
                                    RecordId = notesInfo.Id,
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
        public List<NoteModel> GetAll([FromUri] GetAllRequest request)
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
                var userInfo = (from s in context.UserInfo
                                where s.Id == securityToken.UserId
                                select s).FirstOrDefault();
                if (userInfo == null)
                    return null;
                var notesInfo = (from s in context.NotesInfo
                                 where s.UserId == userInfo.Id
                                 select s);
                var model = (from s in new PagedList<NotesInfo>(notesInfo, pageNumber, pageSize)
                             select new NoteModel
                                        {
                                            NoteId = s.Id,
                                            Title = s.Title
                                        }).ToList();
                securityToken.LastActDate = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                context.SubmitChanges();
                return model;
            }
        }

        [HttpGet]
        public NoteModel GetById([FromUri] GetByIdRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                               where s.Token == request.Token
                                     && s.Status == (int)AppInfoStatus.Online
                               select s).FirstOrDefault();
                if (securityToken == null)
                    return null;
                var notesInfo = (from s in context.NotesInfo
                                 where s.Id == request.NoteId
                                 select s).FirstOrDefault();
                if (notesInfo == null)
                    return null;
                var model = new NoteModel
                                {
                                    NoteId = notesInfo.Id,
                                    Title = notesInfo.Title,
                                    Detail = notesInfo.Description
                                };
                securityToken.LastActDate = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                context.SubmitChanges();
                return model;
            }
        }
    }
}
