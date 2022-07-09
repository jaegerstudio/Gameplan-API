using System;

namespace Gameplan.WebService.Models
{
    public class GeneralFeedbackModel
    {
        public Guid FeedbackId { get; set; }
        public int MatrixValue { get; set; }
        public int LanguageId { get; set; }
        public string Feedback { get; set; }
        public string LanguageName { get; set; }
    }
}