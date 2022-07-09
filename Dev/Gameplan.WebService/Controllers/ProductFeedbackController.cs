using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web.Http;
using Gameplan.Core.Domain;
using Gameplan.Data;
using Gameplan.WebService.Models;
using Gameplan.WebService.Models.Feedback;
using GetByTokenRequest = Gameplan.WebService.Models.Contacts.GetByTokenRequest;

namespace Gameplan.WebService.Controllers
{
    public class ProductFeedbackController : BaseApiController
    {
        [HttpGet]
        public List<ProductModel> GetByToken([FromUri] GetByTokenRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                               where s.Token == request.Token
                                     && s.Status == (int)AppInfoStatus.Online
                               select s).FirstOrDefault();
                if (securityToken == null)
                    return null;
                var products = (from s in context.UserInfo
                                join pu in context.ProductUser on s.Id equals pu.UserId
                                join p in context.ProductInfo on pu.ProductId equals p.Id
                                where s.Id == securityToken.UserId
                                select p).ToList();
                return products.Select(product => new ProductModel
                                                      {
                                                          ProductId = product.Id,
                                                          ProductName = product.Name
                                                      }).ToList();
            }
        }

        [HttpGet]
        public List<GeneralFeedbackModel> GetByMatrixValue([FromUri] GetByMatrixValueRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                               where s.Token == request.Token
                                     && s.Status == (int)AppInfoStatus.Online
                               select s).FirstOrDefault();
                if (securityToken == null)
                    return null;
                var userInfo = (from s in context.UserInfo
                                where s.Id == securityToken.UserId
                                select s).FirstOrDefault();
                if (userInfo == null)
                    return null;
                var products = (from pf in context.GeneralFeedback
                                //join p in context.ProductInfo on pf.ProductId equals p.Id
                                join l in context.LanguageInfo on pf.LanguageId equals l.Id
                                where pf.LanguageId == userInfo.LanguageId
                                      && pf.MatrixValue == request.Matrix
                                select new
                                           {
                                               pf.Id,
                                               pf.MatrixValue,
                                               pf.LanguageId,
                                               pf.Feedback,
                                               LanguageName =  l.Name
                                           }).ToList();
                return products.Select(product => new GeneralFeedbackModel
                                                      {
                                                          MatrixValue = product.MatrixValue,
                                                          FeedbackId = product.Id,
                                                          Feedback = product.Feedback,
                                                          LanguageId = product.LanguageId,
                                                          LanguageName = product.LanguageName
                                                      }).ToList();
            }
        }

        [HttpGet]
        public List<ProductFeedbackModel> GetByProductId([FromUri] GetByProductIdRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                               where s.Token == request.Token
                                     && s.Status == (int)AppInfoStatus.Online
                               select s).FirstOrDefault();
                if (securityToken == null)
                    return null;
                var userInfo = (from s in context.UserInfo
                                where s.Id == securityToken.UserId
                                select s).FirstOrDefault();
                if (userInfo == null)
                    return null;
                var products = (from pf in context.ProductFeedback
                                join p in context.ProductInfo on pf.ProductId equals p.Id
                                join l in context.LanguageInfo on pf.LanguageId equals l.Id
                                where pf.ProductId == request.ProductId
                                      && pf.LanguageId == userInfo.LanguageId
                                select new
                                           {
                                               pf.MatrixPosition,
                                               pf.Id,
                                               pf.ProductId,
                                               ProductName = p.Name,
                                               pf.Feedback,
                                               pf.LanguageId,
                                               LanguageName = l.Name
                                           }).ToList();
                return products.Select(product => new ProductFeedbackModel
                                                      {
                                                          FeedbackId = product.Id,
                                                          ProductId = product.ProductId,
                                                          ProductName = product.ProductName,
                                                          Feedback = product.Feedback,
                                                          LanguageId = product.LanguageId,
                                                          LanguageName = product.LanguageName
                                                      }).ToList();
            }
        }

        [HttpGet]
        public FeedbackModel GetByMatrixValueAndProductId([FromUri] GetByMatrixValueAndProductIdRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                               where s.Token == request.Token
                                     && s.Status == (int)AppInfoStatus.Online
                               select s).FirstOrDefault();
                if (securityToken == null)
                    return null;
                var userInfo = (from s in context.UserInfo
                                where s.Id == securityToken.UserId
                                select s).FirstOrDefault();
                if (userInfo == null)
                    return null;
                var matrix = request.Matrix.ToString(CultureInfo.InvariantCulture);
                var products = (from pf in context.ProductFeedback
                                join p in context.ProductInfo on pf.ProductId equals p.Id
                                join l in context.LanguageInfo on pf.LanguageId equals l.Id
                                where pf.ProductId == request.ProductId
                                      && pf.LanguageId == userInfo.LanguageId
                                      && pf.MatrixPosition.Equals(matrix)
                                select new
                                           {
                                               pf.MatrixPosition,
                                               pf.Id,
                                               pf.ProductId,
                                               ProductName = p.Name,
                                               pf.Feedback,
                                               pf.LanguageId,
                                               LanguageName = l.Name
                                           }).ToList();
                var productFeedback = products.Select(product => new ProductFeedbackModel
                                                                     {
                                                                         FeedbackId = product.Id,
                                                                         ProductId = product.ProductId,
                                                                         ProductName = product.ProductName,
                                                                         Feedback = product.Feedback,
                                                                         LanguageId = product.LanguageId,
                                                                         LanguageName = product.LanguageName
                                                                     }).ToList();
                var genarals = (from pf in context.GeneralFeedback
                                join l in context.LanguageInfo on pf.LanguageId equals l.Id
                                where pf.LanguageId == userInfo.LanguageId
                                      && pf.MatrixValue == request.Matrix
                                select new
                                           {
                                               pf.Id,
                                               pf.MatrixValue,
                                               pf.LanguageId,
                                               pf.Feedback,
                                               LanguageName = l.Name
                                           }).ToList();
                var genaralFeedback = genarals.Select(product => new GeneralFeedbackModel
                                                                     {
                                                                         MatrixValue = product.MatrixValue,
                                                                         FeedbackId = product.Id,
                                                                         Feedback = product.Feedback,
                                                                         LanguageId = product.LanguageId,
                                                                         LanguageName = product.LanguageName
                                                                     }).ToList();
                return new FeedbackModel
                           {
                               ProductFeedback = productFeedback,
                               GeneralFeedback = genaralFeedback
                           };
            }
        }
    }
}
