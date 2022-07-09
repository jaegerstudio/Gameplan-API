namespace Gameplan.WebService.Models.Account
{
    public class SigninRequest : BaseRequest
    {
        public string UserId { get; set; }
        public string Password { get; set; }
        public string DeviceId { get; set; }
        public long DbVersion { get; set; }
    }
}