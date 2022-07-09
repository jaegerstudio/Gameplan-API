using System;

namespace Gameplan.WebService.Models
{
    public class NoteModel
    {
        public Guid NoteId { get; set; }
        public string Title { get; set; }
        public string Detail { get; set; }
        public long CreateDate { get; set; }
    }
}