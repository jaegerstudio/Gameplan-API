using System.Collections.Generic;
using Gameplan.Common.Model;

namespace Gameplan.Common.Request {
    /// <summary>
    /// Class SendEmailRequest
    /// </summary>
    public class SendEmailRequest : BaseRequest {
        public string Recipient { get; set; }
        public string Subject { get; set; }
        public string Body { get; set; }
        public IList<string> CCs { get; set; }
        /// <summary>
        /// Gets or sets the sender.
        /// </summary>
        /// <value>The sender.</value>
        public string Sender { get; set; }
        public string Attachment { get; set; }
    }
}