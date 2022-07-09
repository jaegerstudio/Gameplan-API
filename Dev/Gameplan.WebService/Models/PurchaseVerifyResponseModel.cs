using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Gameplan.WebService.Models
{
    public class PurchaseVerifyResponseModel
    {
        public string UserId { get; set; }
        public long UserExpDate { get; set; }
        public PurchasePackageModel PackageInformation { get; set; }
    }
}