using System;

namespace Gameplan.WebService.Models
{
    public class ContactEventModel
    {
        public Guid ContactEventId { get; set; }
        public Guid EventId { get; set; }
        public Guid ContactId { get; set; }
    }
}