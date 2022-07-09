using System;
using System.Collections.Generic;

namespace Gameplan.WebService.Models
{
    public class ContactPendingModel
    {
        public Guid Id { get; set; }
        public Guid ContactId { get; set; }
        public int ProductId { get; set; }
        public List<object> Question { get; set; }
    }
}