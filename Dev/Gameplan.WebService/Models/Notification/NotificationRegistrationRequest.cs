using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Gameplan.WebService.Models.Notification
{
    public class NotificationRegistrationRequest : BaseRequest
    {
        public string UserId { get; set; }
        public string OsType { get; set; }
        public string NotificationToken { get; set; }
        public string Imei { get; set; }

        public bool validatingData()
        {
            if (UserId == null || OsType == null || NotificationToken == null) return false;

            return true;
        }
    }
}