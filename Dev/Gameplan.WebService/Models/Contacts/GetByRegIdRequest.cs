namespace Gameplan.WebService.Models.Contacts
{
    public class GetByTokenRequest : BaseRequest
    {
        public int? Page { get; set; }
        public int? Size { get; set; }
    }
}