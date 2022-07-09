namespace Gameplan.WebService.Models.Calendar
{
    public class GetAllRequest : BaseRequest
    {
        public int Month { get; set; }
        public int Year { get; set; }
    }
}