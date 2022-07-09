namespace Gameplan.WebService.Models.Account
{
    public class ChangePasswordRequest : BaseRequest
    {
        public string Oldp { get; set; }
        public string Newp { get; set; }
        public string Rnewp { get; set; }
    }
}