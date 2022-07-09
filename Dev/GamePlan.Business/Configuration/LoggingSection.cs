using System.Configuration;

namespace GamePlan.Business
{
    public class LoggingSection
        : ConfigurationSection
    {
        #region Constants

        public const string SectionName = "gameplan.business.logging";
        public static readonly LoggingSection Instance;

        #endregion

        #region Constructors

        static LoggingSection()
        {
            //Ensure that this sections is completely optional
            Instance = (LoggingSection)ConfigurationManager.GetSection(LoggingSection.SectionName);
            if (Instance == null)
            {
                Instance = new LoggingSection();
            }
        }

        public LoggingSection()
        {
        }

        #endregion

        #region Properties

        [ConfigurationProperty("applicationName", IsRequired = false, DefaultValue = "(Unknown Application)")]
        public string ApplicationName
        {
            get
            {
                return (string)this["applicationName"];
            }
        }

        #endregion
    }
}
