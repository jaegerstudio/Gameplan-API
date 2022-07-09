using System;

namespace Gameplan.WebService.Models
{
    public class RemiderModel
    {
        public Guid ReminderId { get; set; }
        public Guid EventId { get; set; }
        public long Time { get; set; }
    }
}