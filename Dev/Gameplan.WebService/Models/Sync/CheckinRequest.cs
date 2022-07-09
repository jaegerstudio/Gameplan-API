using System.Collections.Generic;

namespace Gameplan.WebService.Models.Sync
{
    public class CheckinRequest : BaseRequest
    {
        public List<object> Data { get; set; }
    }
}