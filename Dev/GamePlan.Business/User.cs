using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Xml;
using System.Xml.Linq;
using System.Net.Mail;
using System.Threading;
using System.Globalization;

namespace GamePlan.Business
{
    public class User : Database
    {
        #region Methods             

        public XElement Authenticate(string userId, string password)
        {
            XElement xml = null;
            using (GamePlanEntities context = new GamePlanEntities())
            {
                var user = (from c in context.PC_MobileUser
                            where c.UserID == userId
                                  && c.Password == password
                                  && c.IsDeleted == false
                                  && (c.AccountInitDate == null || c.AccountInitDate <= DateTime.Now)
                                  && (c.AccountExpDate == null || c.AccountExpDate >= DateTime.Now)
                            select
                                new
                                    {
                                        c.RegID,
                                        c.Emotional,
                                        c.Dominance,
                                        c.CompanyID,
                                        c.FirstName,
                                        c.LastName,
                                        c.LanguageID,
                                        c.PC_MobileLanguage.LocalizationName
                                    });
                if (user == null)
                {
                    throw new ApplicationException(String.Format("User Class - Cannot find the user using the user Id: {0} and password {1}.", userId, password));
                }
                xml = new XElement("users",
                                   user.ToList().Select(
                                       a =>
                                       new XElement("user", new XAttribute("regId", a.RegID),
                                                    new XAttribute("emotional", a.Emotional),
                                                    new XAttribute("dominance", a.Dominance),
                                                    new XAttribute("userName", String.Format("{0} {1}", a.FirstName, a.LastName)),
                                                    new XAttribute("companyId", a.CompanyID),
                                                    new XAttribute("languageId", a.LanguageID),
                                                    new XAttribute("localizationName", a.LocalizationName))));
            }
            return xml;
        }

        public XElement GetPassword(string userId)
        {
            XElement xml = null;
            using (GamePlanEntities context = new GamePlanEntities())
            {
                var user = (from c in context.PC_MobileUser where c.UserID == userId && c.IsEnabled == true && c.IsDeleted == false select new { c.RegID, c.Password, c.PC_MobileLanguage.LocalizationName }).FirstOrDefault();
                if (user == null)
                {
                    throw new ApplicationException(String.Format("Cannot find the user using the user Id: {0}.", userId));
                }
                xml = new XElement("user", new XAttribute("regId", user.RegID), new XAttribute("password", user.Password), new XAttribute("locale", user.LocalizationName));
            }
            return xml;
        }

        public void GeneratePasswordRecoveryMessage(string mailTo, string password, string locale)
        {           
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(locale);
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(locale);

            SmtpClient client = new SmtpClient();
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.EnableSsl = true;
            client.Host = GamePlanSection.Instance.SmtpServer;
            client.Port = GamePlanSection.Instance.SmtpPort;

            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential(GamePlanSection.Instance.smtpCredentialUsername, GamePlanSection.Instance.SmtpCredentialPassword);
            client.UseDefaultCredentials = false;
            client.Credentials = credentials;

            MailMessage mailMessage = new MailMessage();
            mailMessage.From = new MailAddress(GamePlanSection.Instance.MailFromAddress, Resources.GamePlan.RecoveryMessageFromDescription, System.Text.Encoding.UTF8);
            mailMessage.To.Add(new MailAddress(mailTo, "", System.Text.Encoding.UTF8));

            mailMessage.Subject = Resources.GamePlan.RecoveryMessageSubject;
            mailMessage.IsBodyHtml = true;

            string body =  (Resources.GamePlan.RecoveryMessageBody.Replace("[Password]", password));
            mailMessage.Body = string.Format(body);
            client.Send(mailMessage);
        }

        #endregion
    }
}
