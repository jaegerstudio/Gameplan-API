using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Xml;
using System.Xml.Linq;

namespace GamePlan.Business
{
    public class Product
        : Database
    {
        #region Methods                      

        public XElement GetAll()
        {
            XElement xml = null;
            using (GamePlanEntities context = new GamePlanEntities())
            {
                var products = (from p in context.PC_MobileProduct
                                select new { p.ProductID, p.ProductName });
                xml = new XElement("products", products.ToList().Select(a => new XElement("product", new XAttribute("productId", a.ProductID), new XAttribute("productName", a.ProductName))));
            }
            return xml;
        }

        public XElement GetByCompanyId(int CompanyId)
        {
            XElement xml = null;
            using (GamePlanEntities context = new GamePlanEntities())
            {
                var products = (from p in context.PC_MobileProduct
                                where p.CompanyID == CompanyId
                                select new { p.ProductID, p.ProductName });
                xml = new XElement("products", products.ToList().Select(a => new XElement("product", new XAttribute("productId", a.ProductID), new XAttribute("productName", a.ProductName))));
            }
            return xml;
        }

        #endregion
    }
}
