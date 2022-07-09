using System;

namespace Gameplan.WebService.Models.Contacts
{
    public class GetByIdRequest : BaseRequest
    {
        public Guid ContactId { get; set; }
    }
}