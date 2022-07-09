namespace Gameplan.WebService.Models.Account
{
    public class EditRequest : BaseRequest
    {
        public string Avatar { get; set; }
        public string FName { get; set; }
        public string LName { get; set; }
        public string JobTitle { get; set; }
    }
}