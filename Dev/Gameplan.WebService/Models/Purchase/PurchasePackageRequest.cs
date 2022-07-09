using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Gameplan.WebService.Models.Purchase
{
    public class PurchasePackageRequest : BaseRequest
    {
        public string UserId { get; set; }
        public string OsType { get; set; }
    }
}