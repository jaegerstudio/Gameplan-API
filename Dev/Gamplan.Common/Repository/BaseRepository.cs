using System;
using System.Configuration;
using Gameplan.Common.Configuration;
using Gameplan.Common.Utilities;

namespace Gameplan.Common.Repository {
    /// <summary>
    /// Class BaseRepository
    /// </summary>
    public class BaseRepository {
        /// <summary>
        /// The _connection string
        /// </summary>
        protected static string _connectionString;

        protected static string _mbConnectionString;

        /// <summary>
        ///     The default language
        /// </summary>
        protected static int DefaultLanguage;

        /// <summary>
        /// The entity name
        /// </summary>
        public const string EntityName = "EF.PersonaMain";
        /// <summary>
        /// The mb entity name
        /// </summary>
        public const string MBEntityName = "EF.MobileGamePlan";


        /// <summary>
        /// Initializes a new instance of the <see cref="BaseRepository"/> class.
        /// </summary>
        /// <exception cref="ConfigurationException"></exception>
        public BaseRepository() {
            //var _conn = ConfigurationManager.ConnectionStrings["PersonaMain"].ConnectionString;
            //var _MBConn = ConfigurationManager.ConnectionStrings["PCMobileGamePlan2"].ConnectionString;

            //if (String.IsNullOrEmpty(_conn) || String.IsNullOrEmpty(_MBConn)) {
            //    throw new ConfigurationErrorsException("Can not find the connection string in the webconfig");
            //}
            ////get the connection string.
            //_connectionString = DataAccess.GetEFConnectionString(_conn, EntityName);
            //_mbConnectionString = DataAccess.GetEFConnectionString(_MBConn, MBEntityName);

            //get the default language.
            DefaultLanguage = Default.DefaultLanguage;
        }
    }
}