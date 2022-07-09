using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Objects;
using System.ComponentModel;
using System.Configuration;

namespace GamePlan.Business
{
    public class GamePlanSection
        : ConfigurationSection
    {
        #region Constants

        public const string SectionName = "gameplan.business";
        public static readonly GamePlanSection Instance;

        #endregion

        #region Constructors

        static GamePlanSection()
        {
            Instance = (GamePlanSection)ConfigurationManager.GetSection(GamePlanSection.SectionName);
            if (Instance == null)
            {
                throw new ConfigurationErrorsException(String.Format("Could not locate required configuration section of type {0} in configuration file using section name {1}", typeof(GamePlanSection), SectionName));
            }
        }

        #endregion

        #region Properties

        [ConfigurationProperty("smtpServer", IsRequired = true)]
        public string SmtpServer
        {
            get
            {
                return (string)this["smtpServer"];
            }
        }

        [ConfigurationProperty("smtpPort", IsRequired = true)]
        public int SmtpPort
        {
            get
            {
                return (int)this["smtpPort"];
            }
        }

        [ConfigurationProperty("smtpCredentialUsername", IsRequired = true)]
        public string smtpCredentialUsername
        {
            get
            {
                return (string)this["smtpCredentialUsername"];
            }
        }

        [ConfigurationProperty("smtpCredentialPassword", IsRequired = true)]
        public string SmtpCredentialPassword
        {
            get
            {
                return (string)this["smtpCredentialPassword"];
            }
        }

        [ConfigurationProperty("mailFromAddress", IsRequired = true)]
        public string MailFromAddress
        {
            get
            {
                return (string)this["mailFromAddress"];
            }
        }
       
        #endregion
    }
}
