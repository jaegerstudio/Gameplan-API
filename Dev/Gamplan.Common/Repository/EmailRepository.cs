using System;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using DotNetOpenAuth.Messaging;
using Gameplan.Common.Repository;
using Gameplan.Common.Request;
using Gameplan.Common.Response;

namespace Gameplan.Common.Repository
{
    /// <summary>
    /// Class EmailRepository
    /// </summary>
    public class EmailRepository : BaseRepository {
        /// <summary>
        /// Sends the email.
        /// </summary>
        /// <param name="request">The request.</param>
        /// <returns>SendEmailResponse.</returns>
        public SendEmailResponse SendEmail(SendEmailRequest request) {
            if (request == null) {
                throw new Exception("request can not be null");
            }
            try {
                //get the email server configuration.
                string smtpAddress = ConfigurationManager.AppSettings["SMTPAddress"];
                string portNumber = ConfigurationManager.AppSettings["PortNumber"];
                string enableSsl = ConfigurationManager.AppSettings["EnableSSL"];

                string sender = string.IsNullOrEmpty(request.Sender)
                                    ? ConfigurationManager.AppSettings["Sender"]
                                    : request.Sender;

                string password = ConfigurationManager.AppSettings["Password"];

                if (!string.IsNullOrEmpty(password)) {
                     sender = ConfigurationManager.AppSettings["Sender"];
                }


                if (string.IsNullOrEmpty(smtpAddress) || string.IsNullOrEmpty(portNumber)
                    || string.IsNullOrEmpty(enableSsl) || string.IsNullOrEmpty(sender)) {
                    throw new Exception("Can not find the email server configuration");
                }
                //invoke email.
                using (var mail = new MailMessage()) {
                    mail.From = new MailAddress(sender);
                    mail.To.Add(request.Recipient);
                    if (request.CCs != null && request.CCs.Any()) {
                        mail.CC.AddRange(request.CCs.Select(c => new MailAddress(c)));
                    }
                    mail.Subject = request.Subject;
                    mail.Body = request.Body;
                    if (!string.IsNullOrEmpty(request.Attachment))
                    {
                        mail.Attachments.Add(new Attachment(@request.Attachment));
                    }
                    mail.IsBodyHtml = true;
                    // Can set to false, if you are sending pure text.
                    if (string.IsNullOrEmpty(password)) {
                        SmtpClient client = new SmtpClient();
                        client.Port = Int32.Parse(portNumber);
                        client.DeliveryMethod = SmtpDeliveryMethod.Network;
                        client.UseDefaultCredentials = false;
                        client.Host = smtpAddress;
                        client.Send(mail);
                    }
                    else {
                        var smtp = new SmtpClient();
                        smtp.UseDefaultCredentials = true;
                        smtp.Credentials = new NetworkCredential(sender, password);
                        smtp.Host = smtpAddress;
                        smtp.Port = 587;
                        smtp.EnableSsl = true;
                        smtp.Send(mail);
                        smtp.Dispose();
                    }
                }
            }
            catch (Exception ex) {
                return new SendEmailResponse {
                    Success = false,
                    Error = ex.Message
                };
            }
            return new SendEmailResponse {Success = true};
        }
    }
}
