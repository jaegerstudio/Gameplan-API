using System.ServiceModel;
using System.Xml.Linq;

namespace GamePlan.WebService
{
    [ServiceContract(Namespace = "http://gameplan.service.v1/", Name = "GamePlanServiceV1")]
    public interface IGamePlanService
    {      
        [OperationContract]
        XElement GetQuestionsByLanguageId(int languageId);

        [OperationContract]
        XElement GetCountryList();

        [OperationContract]
        XElement GetAllProducts();

        [OperationContract]
        XElement AuthenticateUser(string userId, string password);

        [OperationContract]
        XElement RetrievePassword(string userId);

        [OperationContract]
        int GeneratePasswordRecoveryMail(string mailTo, string password, string locale);

        [OperationContract]
        XElement GetProductByCompanyId(int companyId);        

        [OperationContract]
        XElement GetGeneralFeedbackByMatrixValue(int matrixValue, int regId);

        [OperationContract]
        XElement GetProductFeedbackByProductId(int productId, int regId);

        [OperationContract]
        XElement GetGeneralAndProductFeedbackByMatrixValueAndProductId(int matrixValue, int productId, int regId);

        [OperationContract]
        int InsertSurveyUser(string firstName, string lastName, int productId, string gender, string age, string email, string phone, string surveyDate, string address, string comment, int regId);

        [OperationContract]
        XElement GetSurveyUserById(int surveyUserId);

        [OperationContract]
        XElement GetSurveyUserByRegId(int regId);        

        [OperationContract]
        int DeleteSurveyUser(int userId, int regId);

        [OperationContract]
        string GetWeather(int woeid,  char degreeType);
    }
}
