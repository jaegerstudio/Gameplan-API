namespace Gameplan.WebService.Models.Notes
{
    public class AddnewRequest : BaseRequest
    {
        public string Title { get; set; }
        public string Detail { get; set; }
    }
}