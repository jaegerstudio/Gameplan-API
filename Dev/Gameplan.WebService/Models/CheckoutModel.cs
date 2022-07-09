using System.Collections.Generic;

namespace Gameplan.WebService.Models
{
    public class CheckoutModel
    {
        public int Code { get; set; }
        public string Message { get; set; }
        public long UserExpDate { get; set; }
        public string CheckoutToken { get; set; }
        public List<DbVersionModel> Data { get; set; }
    }
}