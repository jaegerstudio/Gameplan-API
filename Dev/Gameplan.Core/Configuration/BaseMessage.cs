namespace Gameplan.Core.Configuration
{
    public class BaseMessage
    {
        public const string Success = "Success";
        public const string ChangePassword = "Password had been changed; therefore you can't sync. Please exist and log in again.";
        public const string IncorrectAccount = "Account or password is incorrect";
        public const string IncorrectPassword = "Password incorrect";
        public const string NewPasswordsNotMatch = "New passwords do not match";
        public const string DataPostBlank = "Data post is blank!";
        public const string DataPostInvalid = "Invalid data post!";
        public static string UpdateDataError = "Cannot update data!";
        public const string InvalidSessionId = "Security token does not exist";
        public const string SessionTimeout = "Session timeout";
        public const string PurchcasePackageNotExist = "Purchase packages isn't exist";
        public const string PurchcaseInvalid = "Purchase is invalid";
        public const string UserExpired = "Your account is expired";
    }
}
