using System;

namespace Gameplan.WebService.Models
{
    public class EventModel
    {
        public Guid EventId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public long FromTime { get; set; }
        public long ToTime { get; set; }
        public int EventColorId { get; set; }
        public int RepeatId { get; set; }
        public string LocationName { get; set; }
        public double Longitude { get; set; }
        public double Latitude { get; set; }
        public long CreateDate { get; set; }
    }
}