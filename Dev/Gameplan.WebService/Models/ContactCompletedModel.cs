using System;

namespace Gameplan.WebService.Models
{
    public class ContactCompletedModel
    {
        public Guid Id { get; set; }
        public Guid ContactId { get; set; }
        public int MatrixValue { get; set; }
        public string GeneralFeedback { get; set; }
        public string ProductFeedback { get; set; }
    }
}