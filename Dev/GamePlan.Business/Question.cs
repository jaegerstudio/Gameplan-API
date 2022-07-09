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
    public class Question
        : Database
    {      
        public XElement GetAll()
        {
            XElement xml = null;
            using (GamePlanEntities context = new GamePlanEntities())
            {
                var questions = (from c in context.PC_MobileQuestion select new { c.QuesID, c.QuesText1, c.QuesText2, c.QuesType, c.LanguageID });

                xml = new XElement("questions", questions.ToList().Select(a => new XElement("question", new XAttribute("id", a.QuesID), new XAttribute("questionText1", a.QuesText1), new XAttribute("questionText2", a.QuesText2), new XAttribute("questionType", a.QuesType), new XAttribute("languageId", a.LanguageID))));
            }
            return xml;
        }

        public XElement GetByLanguageId(int languageId)
        {
            XElement xml = null;
            using (GamePlanEntities context = new GamePlanEntities())
            {
                var questions = (from c in context.PC_MobileQuestion where c.LanguageID == languageId select new { c.QuesID, c.QuestionNumber, c.QuesText1, c.QuesText2, c.QuesType, c.LanguageID });

                xml = new XElement("questions", questions.ToList().Select(a => new XElement("question", new XAttribute("id", a.QuesID), new XAttribute("questionText1", String.Format("{0}. {1}", a.QuestionNumber, a.QuesText1)), new XAttribute("questionText2", a.QuesText2), new XAttribute("questionType", a.QuesType), new XAttribute("languageId", a.LanguageID))));
            }
            return xml;
        }
    }
}
