using System;

namespace Gameplan.WebService.Models.Contacts
{
    public class CompletedRequest : BaseRequest
    {
        public Guid ContactId { get; set; }
        public int MatrixValue { get; set; }
    }
}