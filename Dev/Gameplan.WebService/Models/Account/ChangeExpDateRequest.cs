using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Gameplan.WebService.Models.Account
{
    public class ChangeExpDateRequest : BaseRequest
    {
        public string UserId { get; set; }
        public string ExpDate { get; set; }
    }
}