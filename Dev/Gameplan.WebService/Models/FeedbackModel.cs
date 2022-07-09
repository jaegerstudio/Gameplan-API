using System.Collections.Generic;

namespace Gameplan.WebService.Models
{
    public class FeedbackModel
    {
        public List<ProductFeedbackModel> ProductFeedback { get; set; }
        public List<GeneralFeedbackModel> GeneralFeedback { get; set; }
    }
}