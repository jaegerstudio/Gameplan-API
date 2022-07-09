using System.Collections.Generic;

namespace Gameplan.WebService.Models.Calendar
{
    public class EditEventRequest : BaseRequest
    {
        public int EventId { get; set; }
        public string Name { get; set; }
        public string Content { get; set; }
        public int CalendarType { get; set; }
        public string FromDate { get; set; }
        public string ToDate { get; set; }
        public string FromTime { get; set; }
        public string ToTime { get; set; }
        public bool AllDay { get; set; }
        public string Location { get; set; }
        public List<ReminderModel> Reminder { get; set; }
        public List<int> ContactId { get; set; }
        public bool Repeat { get; set; }
    }
}