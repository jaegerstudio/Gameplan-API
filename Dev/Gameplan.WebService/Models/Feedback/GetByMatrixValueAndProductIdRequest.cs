namespace Gameplan.WebService.Models.Feedback
{
    public class GetByMatrixValueAndProductIdRequest : BaseRequest
    {
        public int Matrix { get; set; }
        public int ProductId { get; set; }
    }
}