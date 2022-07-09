using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Xml;
using System.Xml.Linq;

namespace GamePlan.Business
{
    public class SurveyUser
        : Database
    {
        #region Methods

        public static PC_MobileListener Get(string firstName, string LastName)
        {
            PC_MobileListener surveyUser = null;
            using (GamePlanEntities context = new GamePlanEntities())
            {
                surveyUser =
                    (from su in context.PC_MobileListener
                     where su.FirstName.Equals(firstName) && su.LastName.Equals(LastName)
                     select su).FirstOrDefault();
            }
            return surveyUser;
        }

        public int Delete(int UserID, int RegId)
        {
            List<SqlParameter> sqlParameterCollection = new List<SqlParameter>();
            sqlParameterCollection.Add(new SqlParameter("ID", UserID));
            sqlParameterCollection.Add(new SqlParameter("RegID", RegId));

            return ExecuteNonQueryStoredProcedure("prc_Contact_DeleteByID", sqlParameterCollection);
        }

        public int Insert(string FirstName, string LastName, int ProductID, string Gender, string Age, string Email, string Phone, string SurveyDate, string Address, string Comment, int RegID)
        {
            List<SqlParameter> sqlParameterCollection = new List<SqlParameter>();
            sqlParameterCollection.Add(new SqlParameter("FirstName", FirstName));
            sqlParameterCollection.Add(new SqlParameter("LastName", LastName));
            sqlParameterCollection.Add(new SqlParameter("ProductID", ProductID));
            sqlParameterCollection.Add(new SqlParameter("Gender", Gender));
            sqlParameterCollection.Add(new SqlParameter("Age", Age));
            sqlParameterCollection.Add(new SqlParameter("Email", Email));
            sqlParameterCollection.Add(new SqlParameter("Phone", Phone));
            sqlParameterCollection.Add(new SqlParameter("SurveyDate", SurveyDate));
            sqlParameterCollection.Add(new SqlParameter("Address", Address));
            sqlParameterCollection.Add(new SqlParameter("Comments", Comment));
            sqlParameterCollection.Add(new SqlParameter("RegID", RegID));

            return ExecuteNonQueryStoredProcedure("prc_SurveyUser_Insert", sqlParameterCollection);
        }

        public XElement GetByRegId(int regId)
        {
            XElement xml = null;
            using (GamePlanEntities context = new GamePlanEntities())
            {
                var countries = (from c in context.PC_MobileListener
                                 where c.RegID == regId
                                 select new {c.RegID, c.SurveyUserID, c.SurveyDate, c.FirstName, c.LastName, c.Gender});
                xml = new XElement("users",
                                   countries.ToList().Select(
                                       a =>
                                       new XElement("user", new XAttribute("surveyUserId", a.SurveyUserID),
                                                    new XAttribute("userName",
                                                                   String.Format("{0} {1}", a.FirstName, a.LastName)))));
            }
            return xml;
        }

        public XElement GetById(int surveyUserId)
        {
            XElement xml = null;
            using (GamePlanEntities context = new GamePlanEntities())
            {
                PC_MobileListener surveyUser = (from ml in context.PC_MobileListener
                                                where ml.SurveyUserID == surveyUserId
                                                select ml).FirstOrDefault();
                if (surveyUser == null)
                {
                    throw new ApplicationException(String.Format("Unable to find the survey user using the RegId: {0}.", surveyUserId));
                }
                xml = new XElement("surveyUser", new XAttribute("id", surveyUser.SurveyUserID)
                    , new XAttribute("firstName", surveyUser.FirstName)
                    , new XAttribute("lastName", surveyUser.LastName)
                    , new XAttribute("gender", surveyUser.Gender)
                    , new XAttribute("age", surveyUser.Age)
                    , new XAttribute("email", surveyUser.Email)
                    , new XAttribute("phone", surveyUser.Phone)
                    , new XAttribute("surveyDate", surveyUser.SurveyDate)
                    , new XAttribute("address", surveyUser.Address)
                    , new XAttribute("regId", surveyUser.RegID)
                    , new XAttribute("productId", surveyUser.ProductID)
                    , new XAttribute("comments", surveyUser.Comments));
            }
            return xml;
        }

        #endregion
    }
}
