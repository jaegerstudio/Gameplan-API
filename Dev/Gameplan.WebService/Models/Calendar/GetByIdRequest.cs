namespace Gameplan.WebService.Models.Calendar
{
    public class GetByIdRequest : BaseRequest
    {
        public int EventId { get; set; }
    }
}