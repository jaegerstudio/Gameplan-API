using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using Gameplan.Data;
using Gameplan.WebService.Models;
using Gameplan.WebService.Models.Product;

namespace Gameplan.WebService.Controllers
{
    public class ProductController : BaseApiController
    {
        [HttpGet]
        public List<ProductModel> GetAll()
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var products = (from s in context.ProductInfo
                                select s).ToList();
                return products.Select(product => new ProductModel
                                                      {
                                                          ProductId = product.Id,
                                                          ProductName = product.Name,
                                                          CompanyId = product.CompanyId
                                                      }).ToList();
            }
        }

        [HttpGet]
        public List<ProductModel> GetByCompanyId([FromUri] GetByCompanyIdRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var products = (from s in context.ProductInfo
                                where s.CompanyId == request.CompanyId
                                select s).ToList();
                return products.Select(product => new ProductModel
                                                      {
                                                          ProductId = product.Id,
                                                          ProductName = product.Name,
                                                          CompanyId = product.CompanyId
                                                      }).ToList();
            }
        }
    }
}
