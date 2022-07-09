using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Xml;
using System.Xml.Linq;
using System.Data;

namespace GamePlan.Business
{
    public class ProductFeedback
        : Database
    {
        #region Methods        

        public XElement GetByRegId(int regId)
        {
            XElement xml;
            using (var context = new GamePlanEntities())
            {
                var products = (from c in context.PC_MobileUser
                                join pf in context.PC_MobileProductUser on c.RegID equals pf.RegID
                                join p in context.PC_MobileProduct on pf.ProductID equals p.ProductID
                                where c.RegID == regId
                                select new {p.ProductID, p.ProductName});
                xml = new XElement("products",
                                   products.ToList().Select(
                                       a =>
                                       new XElement("product", new XAttribute("ProductId", a.ProductID),
                                                    new XAttribute("ProductName", a.ProductName))));
            }
            return xml;
        }

        public XElement GetByMatrixValue(int matrixValue, int regId)
        {
            XElement xml;

            using (var context = new GamePlanEntities())
            {
                var mobileUser = (from mu in context.PC_MobileUser where mu.RegID == regId select mu).FirstOrDefault();
                if (mobileUser == null)
                {
                    throw new ApplicationException(String.Format("Mobile user couldn't be found using the RegID: {0}.", regId));
                }
                var products = (from mpf in context.PC_MobileProductFeedback
                                join mp in context.PC_MobileProduct on mpf.ProductID equals mp.ProductID
                                join ml in context.PC_MobileLanguage on mpf.LanguageID equals ml.LanguageID
                                where mpf.LanguageID == mobileUser.LanguageID &&
                                      mpf.MatrixPosition == matrixValue.ToString()
                                select
                                    new
                                        {
                                            mpf.MatrixPosition,
                                            mpf.ID,
                                            mpf.ProductID,
                                            mp.ProductName,
                                            mpf.Feedback,
                                            mpf.LanguageID,
                                            ml.LanguageName
                                        });
                xml = new XElement("products", products.ToList().Select(a => new XElement("product"
                    , new XAttribute("MatrixPosition", a.MatrixPosition)
                    , new XAttribute("ID", a.ID)
                    , new XAttribute("ProductID", a.ProductID)
                    , new XAttribute("ProductName", a.ProductName)
                    , new XAttribute("Feedback", a.Feedback)
                    , new XAttribute("LanguageID", a.LanguageID)
                    , new XAttribute("LanguageName", a.LanguageName))));
            }
            return xml;
        }

        public XElement GetByProductId(int productId, int regId)
        {
            XElement xml;
            using (var context = new GamePlanEntities())
            {
                var mobileUser = (from mu in context.PC_MobileUser where mu.RegID == regId select mu).FirstOrDefault();
                if (mobileUser == null)
                {
                    throw new ApplicationException(String.Format("Mobile user couldn't be found using the RegID: {0}.", regId));
                }
                var products = (from mpf in context.PC_MobileProductFeedback
                                join mp in context.PC_MobileProduct on mpf.ProductID equals mp.ProductID
                                join ml in context.PC_MobileLanguage on mpf.LanguageID equals ml.LanguageID
                                where mpf.ProductID == productId && ml.LanguageID == mobileUser.LanguageID
                                select
                                    new
                                        {
                                            mpf.ID,
                                            mpf.ProductID,
                                            mp.ProductName,
                                            mpf.Feedback,
                                            mpf.LanguageID,
                                            ml.LanguageName
                                        });
                xml = new XElement("products",
                                   products.ToList().Select(
                                       a =>
                                       new XElement("product", new XAttribute("Id", a.ID),
                                                    new XAttribute("productId", a.ProductID),
                                                    new XAttribute("feedback", a.Feedback),
                                                    new XAttribute("languageId", a.LanguageID),
                                                    new XAttribute("languageName", a.LanguageName),
                                                    new XAttribute("productName", a.ProductName))));
            }
            return xml;
        }

        public XElement GetByMatrixValueAndProductId(int productId, int matrixValue, int regId)
        {
            XElement xml;
            string matrix = matrixValue.ToString(CultureInfo.InvariantCulture);
            using (var context = new GamePlanEntities())
            {
                var mobileUser = (from mu in context.PC_MobileUser where mu.RegID == regId select mu).FirstOrDefault();
                if (mobileUser == null)
                {
                    throw new ApplicationException(String.Format("Mobile user couldn't be found using the RegID: {0}.", regId));
                }
                var products = (from mpf in context.PC_MobileProductFeedback
                                join mp in context.PC_MobileProduct on mpf.ProductID equals mp.ProductID
                                join ml in context.PC_MobileLanguage on mpf.LanguageID equals ml.LanguageID
                                where mpf.ProductID == productId && ml.LanguageID == mobileUser.LanguageID &&
                                      mpf.MatrixPosition.Equals(matrix)
                                select
                                    new
                                        {
                                            mpf.ID,
                                            mpf.ProductID,
                                            mp.ProductName,
                                            mpf.Feedback,
                                            mpf.LanguageID,
                                            ml.LanguageName
                                        });
                xml = new XElement("products",
                                   products.ToList().Select(
                                       a =>
                                       new XElement("product", new XAttribute("Id", a.ID),
                                                    new XAttribute("productId", a.ProductID),
                                                    new XAttribute("feedback", a.Feedback),
                                                    new XAttribute("languageId", a.LanguageID),
                                                    new XAttribute("languageName", a.LanguageName),
                                                    new XAttribute("productName", a.ProductName))));
            }
            return xml;
        }     

        #endregion
    }
}
