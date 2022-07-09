namespace Gameplan.Core.Configuration
{
    public class BaseCode
    {
        public const int Success = 200;
        public const int ChangePassword = 201;
        public const int IncorrectAccount = 202;
        public const int DataNotExist = 203;
        public const int IncorrectPassword = 204;
        public const int NewPasswordsNotMatch = 205;
        public const int InvalidSessionId = 206;
        public const int SessionTimeout = 207;
        public const int DataPostBlank = 402;
        public const int DataPostInvalid = 403;
        public static int UpdateDataError = 404;
        public static int PurchaseInvalid = 300;
        public static int Warning = 501;
        public static int Expired = 502;


        public static int DeviceExisted = 50002;
        public static int UserExisted = 50003;
        public static int SendEmailFaield = 5004;
    }
}
