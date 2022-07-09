using Gameplan.Core.Configuration;
using Gameplan.Data;
using Gameplan.WebService.Models;
using Gameplan.WebService.Models.GamePlan;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace Gameplan.WebService.Controllers
{
    public class GamePlanController : BaseApiController
    {
       
        [HttpGet]
        public ResponseMessage GetContactInfo([FromUri] GetContactInfoRequest request)
        {
            if (request == null) {
                return new ResponseMessage {
                    Code = 400,
                    Message = "Bad request"
                };
            }

            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                //var securityToken = (from s in context.SecurityToken
                //                     where s.Token == request.Token
                //                     //&& s.Status == (int) AppInfoStatus.Online
                //                     select s).FirstOrDefault();
                //if (securityToken == null)
                //{
                //    return new ResponseMessage
                //    {
                //        Code = BaseCode.InvalidSessionId,
                //        Message = BaseMessage.InvalidSessionId
                //    };
                //}

                var companyContactInfo = (from s in context.PC_CompanyContactInfos
                                              where s.LanguageID == request.LanguageID
                                              select s).FirstOrDefault();

                // If cannot find contact info of this language, choose English
                if (companyContactInfo == null)
                {
                    companyContactInfo = (from s in context.PC_CompanyContactInfos
                                              where s.LanguageID == 0
                                              select s).FirstOrDefault();
                }

                return new ResponseMessage
                {
                    Code = 200,
                    Message = "Success",
                    Result = companyContactInfo
                };
            }
        } 

    }
}
