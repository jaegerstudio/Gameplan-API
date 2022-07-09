using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;
using System.Xml.Linq;

namespace GamePlan.Business
{
    public class GeneralFeedback
        : Database
    {
        #region Methods

        public XElement GetByMatrixValue(int matrixValue, int regId)
        {
            XElement xml = null;
            using (GamePlanEntities context = new GamePlanEntities())
            {
                PC_MobileUser mobileUser = (from u in context.PC_MobileUser where u.RegID == regId select u).FirstOrDefault();
                if (mobileUser == null)
                {
                    throw new ApplicationException(String.Format("Cannot find mobileUser for given Reg Id : {0}.", regId));
                }
                var products = (from mgf in context.PC_MobileGeneralFeedback
                                join ml in context.PC_MobileLanguage on mgf.LanguageID equals ml.LanguageID
                                where mgf.MatrixValue == matrixValue && mgf.LanguageID == mobileUser.LanguageID
                                select new { mgf.GeneralFeedID, mgf.MatrixValue, mgf.LanguageID, mgf.GeneralFeedback, ml.LanguageName });
                xml = new XElement("generalFeedbacks",
                                   products.ToList().Select(
                                       a =>
                                       new XElement("generalFeedback", new XAttribute("generalFeedId", a.GeneralFeedID),
                                                    new XAttribute("matrixValue", a.MatrixValue),
                                                    new XAttribute("languageId", a.LanguageID),
                                                    new XAttribute("generalFeedback", a.GeneralFeedback),
                                                    new XAttribute("languageName", a.LanguageName))));
            }
            return xml;
        }        

        #endregion
    }
}
