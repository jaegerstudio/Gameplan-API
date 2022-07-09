using System;

namespace Gameplan.WebService.Models.Notes
{
    public class DeleteRequest : BaseRequest
    {
        public Guid NoteId { get; set; }
    }
}