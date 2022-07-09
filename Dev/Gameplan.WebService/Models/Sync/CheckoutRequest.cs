namespace Gameplan.WebService.Models.Sync
{
    public class CheckoutRequest : BaseRequest
    {
        public int CheckoutType { get; set; }
        public long Version { get; set; }
    }
}