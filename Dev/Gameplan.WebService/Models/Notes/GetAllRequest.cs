namespace Gameplan.WebService.Models.Notes
{
    public class GetAllRequest : BaseRequest
    {
        public int? Page { get; set; }
        public int? Size { get; set; }
    }
}