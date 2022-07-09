using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Gameplan.WebService.Models
{
    public class PurchasePackageModel
    {
        public string PurchaseId { get; set; }
        public string Price { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public int ExtensionDays { get; set; }
    }
}