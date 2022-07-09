using System;
using System.Collections.Generic;

namespace Gameplan.WebService.Models.Contacts
{
    public class PendingRequest : BaseRequest
    {
        public int ProductId { get; set; }
        public Guid ContactId { get; set; }
        public List<PendingQuestionRequest> PendingQuestion { get; set; }
    }
}