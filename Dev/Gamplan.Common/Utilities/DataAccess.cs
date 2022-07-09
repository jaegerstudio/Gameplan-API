using System;
using System.Data.Entity.Core.EntityClient;

namespace Gameplan.Common.Utilities {
    /// <summary>
    /// Class DataAccess
    /// </summary>
    public static class DataAccess {
        /// <summary>
        /// Gets the EF connection string.
        /// </summary>
        /// <param name="adoConnectionString">The ADO connection string.</param>
        /// <param name="entityName">Name of the entity.</param>
        /// <returns>System.String.</returns>
        public static string GetEFConnectionString(string adoConnectionString, string entityName) {
            if (String.IsNullOrEmpty(adoConnectionString) || String.IsNullOrEmpty(entityName)) {
                throw new NullReferenceException("prams can not be null");
            }

            var conStr = new EntityConnectionStringBuilder();

            conStr.Provider = "System.Data.SqlClient";
            conStr.ProviderConnectionString = adoConnectionString;
            conStr.Metadata = @"res://*/" + entityName + ".csdl|res://*/" + entityName + ".ssdl|res://*/" + entityName + ".msl";

            return conStr.ToString();
        }
    }
}