using System;

namespace Gameplan.WebService.Models.Notes
{
    public class GetByIdRequest : BaseRequest
    {
        public Guid NoteId { get; set; }
    }
}