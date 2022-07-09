using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Gameplan.WebService.Models.Purchase
{
    public class PurchaseVerificationRequest : BaseRequest
    {
        public string UserId { get; set; }
        public string OsType { get; set; }
        public string PurchaseInvoice { get; set; }
        public string Signature { get; set; }
        public string ProductId { get; set; }
    }
}