using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using Gameplan.Data;
using Gameplan.WebService.Models;
using Gameplan.WebService.Models.Question;

namespace Gameplan.WebService.Controllers
{
    public class QuestionController : BaseApiController
    {
        [HttpGet]
        public List<QuestionModel> GetAll([FromUri] GetAllRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var questions = (from s in context.QuestionInfo
                                 select s).ToList();
                return questions.Select(question => new QuestionModel
                                                        {
                                                            QuestionId = question.Id,
                                                            QuestionText1 = question.QuesText1,
                                                            QuestionText2 = question.QuesText2,
                                                            QuestionType = question.QuesType,
                                                            LanguageId = question.LanguageId
                                                        }).ToList();
            }
        }

        [HttpGet]
        public List<QuestionModel> GetByLanguageId([FromUri] GetByLanguageIdRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var questions = (from s in context.QuestionInfo
                                 where s.LanguageId == request.LanguageId
                                 select s).ToList();
                return questions.Select(question => new QuestionModel
                                                        {
                                                            QuestionId = question.Id,
                                                            QuestionText1 = String.Format("{0}. {1}", question.Number, question.QuesText1),
                                                            QuestionText2 = question.QuesText2,
                                                            QuestionType = question.QuesType,
                                                            LanguageId = question.LanguageId
                                                        }).ToList();
            }
        }
    }
}
