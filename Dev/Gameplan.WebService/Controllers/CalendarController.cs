using System.Collections.Generic;
using System.Web.Http;
using Gameplan.WebService.Models;
using Gameplan.WebService.Models.Calendar;

namespace Gameplan.WebService.Controllers
{
    public class CalendarController : BaseApiController
    {
        [HttpGet]
        public List<EventListModel> GetAll([FromUri] GetAllRequest request)
        {
            return new List<EventListModel>();
        }

        [HttpGet]
        public EventModel GetById([FromUri] GetByIdRequest request)
        {
            return new EventModel();
        }

        [HttpGet]
        public ResponseMessage EditEvent([FromUri] EditEventRequest request)
        {
            return new ResponseMessage
                       {
                           Code = 200,
                           Message = "Success"
                       };
        }
    }
}
