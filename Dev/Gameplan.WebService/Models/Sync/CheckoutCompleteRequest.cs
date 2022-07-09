using System;

namespace Gameplan.WebService.Models.Sync
{
    public class CheckoutCompleteRequest : BaseRequest
    {
        public Guid CheckoutToken { get; set; }
    }
}