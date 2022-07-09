using System;
using System.Xml.Linq;

using GamePlan.Business;
using System.Net;

namespace GamePlan.WebService
{
    public class GamePlanService : IGamePlanService
    {
        public XElement GetSurveyUserById(int surveyUserId)
        {
            XElement xElement;
            try
            {
                //bool cenk = xElement.HasAttributes;
                var surveyUser = new SurveyUser();
                xElement = surveyUser.GetById(surveyUserId);               
            }
            catch (Exception exception)
            {
                exception.LogError(String.Format("surveyUserId function threw exception. Survey user Id: {0}.", surveyUserId));
                throw;
            }
            return xElement;
        }

        public XElement GetSurveyUserByRegId(int regId)
        {
            XElement xElement;
            try
            {
                var surveyUser = new SurveyUser();
                xElement = surveyUser.GetByRegId(regId);
            }
            catch (Exception exception)
            {
                exception.LogError(String.Format("getSurveyUserByRegId function threw exception. Reg Id: {0}.", regId));
                throw;
            }
            return xElement;
        }

        public int DeleteSurveyUser(int userId, int regId)
        {
            int numberOfRowsAffected;
            try
            {
                var user = new SurveyUser();
                numberOfRowsAffected = user.Delete(userId, regId);
            }
            catch (Exception exception)
            {
                exception.LogError(String.Format("DeleteSurveyUser function threw exception. Reg Id: {0}, User Id: {1}.", regId, userId));
                throw;
            }
            return numberOfRowsAffected;
        }

        public int InsertSurveyUser(string firstName, string lastName, int productId, string gender, string age, string email, string phone, string surveyDate, string address, string comment, int regId)
        {
            int numberOfAffectedRows;
            try
            {
                var surveyUser = new SurveyUser();
                numberOfAffectedRows = surveyUser.Insert(firstName, lastName, productId, gender, age, email, phone, surveyDate, address, comment, regId);
            }
            catch (Exception exception)
            {
                exception.LogError(String.Format("InsertSurveyUser function threw exception. FirstName: {0}, LastName: {1}, ProductId: {2}, Gender: {3}, Age: {4}, Email: {5}, Phone: {6}, Survey Date: {7}, Address: {8}, Comment: {9}, RegId: {10}.", firstName, lastName, productId, gender, age, email, phone, surveyDate, address, comment, regId));
                throw;
            }
            return numberOfAffectedRows;
        }

        public XElement GetCountryList()
        {
            XElement xElement;
            try
            {
                var country = new Country();
                xElement = country.GetAll();
            }
            catch (Exception exception)
            {
                exception.LogError(String.Format("GetCountryList function threw exception."));
                throw;    
            }
            return xElement;
        }

        public XElement GetQuestionsByLanguageId(int languageId)
        {
            XElement xElement;
            try
            {
                var question = new Question();
                xElement = question.GetByLanguageId(languageId);
            }
            catch (Exception exception)
            {
                exception.LogError(String.Format("GetAllQuestions function threw exception."));
                throw;
            }
            return xElement;                       
        }

        public XElement GetAllProducts()
        {
            XElement xElement;
            try
            {
                var product = new Product();
                xElement = product.GetAll();
            }
            catch (Exception exception)
            {
                exception.LogError(String.Format("GetAllProducts function threw exception."));
                throw;
            }
            return xElement; 
        }

        public XElement GetProductByCompanyId(int companyId)
        {
            XElement xElement;
            try
            {
                var product = new Product();
                xElement = product.GetByCompanyId(companyId);
            }
            catch (Exception exception)
            {
                exception.LogError(String.Format("GetProductByCompanyId function threw exception. Company Id: {0}.", companyId));
                throw;
            }
            return xElement;           
        }

        public XElement GetProductFeedbackByProductId(int productId, int regId)
        {
            XElement xElement;
            try
            {
                var productFeedback = new ProductFeedback();
                xElement = productFeedback.GetByProductId(productId, regId);
            }
            catch (Exception exception)
            {
                exception.LogError(String.Format("GetProductFeedbackByProductId function threw exception. ProductId: {0}, RegId: {1}.", productId, regId));
                throw;  
            }
            return xElement; 
        }

        //public XElement GetGeneralAndProductFeedbackByMatrixValueAndProductId(int matrixValue, int productId, int regId)
        //{
        //    XElement xElement = null;
        //    try
        //    {
        //        ProductFeedback productFeedback = new ProductFeedback();
        //        xElement = productFeedback.GetByMatrixValueAndProductId(productId, matrixValue, regId);

        //        GeneralFeedback generalFeedback = new GeneralFeedback();
        //        xElement = generalFeedback.GetByMatrixValue(matrixValue, regId);                
        //    }
        //    catch (Exception exception)
        //    {
        //        LoggingHandler.LogError(exception, String.Format("GetGeneralAndProductFeedbackByMValueAndProductId function threw exception. Matrix value: {0}, Product Id: {1}, Reg Id: {2}.", matrixValue, productId, regId));
        //        throw exception;
        //    }
        //    return xElement;            
        //}
        public XElement GetGeneralAndProductFeedbackByMatrixValueAndProductId(int matrixValue, int productId, int regId)
        {
            XElement combined = null;
            XElement productFeedbackElement = null;
            XElement generalFeedbackElement = null;
            try
            {
                var productFeedback = new ProductFeedback();
                productFeedbackElement = productFeedback.GetByMatrixValueAndProductId(productId, matrixValue, regId);

                combined.Add(productFeedback);

                var generalFeedback = new GeneralFeedback();
                generalFeedbackElement = generalFeedback.GetByMatrixValue(matrixValue, regId);

                combined.Add(generalFeedback);

                return combined;
            }
            catch (Exception exception)
            {
                exception.LogError(String.Format("GetGeneralAndProductFeedbackByMValueAndProductId function threw exception. Matrix value: {0}, Product Id: {1}, Reg Id: {2}.", matrixValue, productId, regId));
                throw;
            }
        }

        public XElement GetGeneralFeedbackByMatrixValue(int matrixValue, int regId)
        {
            XElement xElement;
            try
            {
                var generalFeedback = new GeneralFeedback();
                xElement = generalFeedback.GetByMatrixValue(matrixValue, regId);
            }
            catch (Exception exception)
            {
                exception.LogError(String.Format("GetGeneralFeedbackByMatrixValue function threw exception. Matrix Value: {0}, RegId: {1}.", matrixValue, regId));
                throw;
            }
            return xElement; 
        }

        public XElement AuthenticateUser(string userId, string password)
        {
            XElement xElement;
            try
            {
                var user = new User();
                xElement = user.Authenticate(userId, password);
            }
            catch (Exception exception)
            {
                exception.LogError(String.Format("AuthenticateUser function threw exception. User Id: {0}, Password: {1}.", userId, password));
                throw;
            }
            return xElement; 
        }

        public XElement RetrievePassword(string userId)
        {
            XElement xElement;
            try
            {
                var user = new User();
                xElement = user.GetPassword(userId);
            }
            catch (Exception exception)
            {
                exception.LogError(String.Format("RetrievePassword function threw exception. User Id: {0}.", userId));
                throw;
            }
            return xElement; 
        }

        public int GeneratePasswordRecoveryMail(string mailTo, string password, string locale)
        {
            try
            {
                var user = new User();
                user.GeneratePasswordRecoveryMessage(mailTo, password, locale);              
            }
            catch
            {
                LoggingHandler.LogMessage("", String.Format("GeneratePasswordRecoveryMail function threw exception. MailTo: {0}, Password: {1}.", mailTo, password));                
                return 0;
            }
            return 1;
        }  
        
        public string GetWeather(int woeid, char degreeType)
        {
            const string yahooWeatherUrl = "http://api.wunderground.com/api/43001367864b1198/forecast/lang:EN/q/CA/San_Francisco.xml";
            string xml;

            using (var webClient = new WebClient())
            {
                string url = string.Format(yahooWeatherUrl, woeid, degreeType);
                xml = webClient.DownloadString(url);
            }
            return xml;
        }
    }
}
