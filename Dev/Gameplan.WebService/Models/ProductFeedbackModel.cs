namespace Gameplan.WebService.Models
{
    public class ProductFeedbackModel
    {
        public long FeedbackId { get; set; }
        public int ProductId { get; set; }
        public string MatrixPosition { get; set; }
        public string ProductName { get; set; }
        public string Feedback { get; set; }
        public int LanguageId { get; set; }
        public string LanguageName { get; set; }
    }
}