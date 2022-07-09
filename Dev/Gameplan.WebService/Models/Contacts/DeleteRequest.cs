using System;

namespace Gameplan.WebService.Models.Contacts
{
    public class DeleteRequest : BaseRequest
    {
        public Guid ContactId { get; set; }
    }
}