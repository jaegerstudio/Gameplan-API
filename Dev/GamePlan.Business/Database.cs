using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Xml;
using System.Xml.Linq;

namespace GamePlan.Business
{
    public class Database
    {
        #region Fields

        public readonly string ConnectionString = string.Empty;

        #endregion

        #region Constructors

        public Database()
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["GamePlan"].ConnectionString;
        }

        #endregion

        #region Methods

        public virtual XmlDocument ToXmlDocument(XElement xElement)
        {
            XmlDocument xmlDocument = new XmlDocument();
            try
            {                
                xmlDocument.Load(xElement.CreateReader());               
            }
            catch (Exception exception)
            {
                LoggingHandler.LogError(exception, String.Format("ToXmlDocument function is throwing exception. XElement info: {0}.", xElement));
                throw exception;
            }
            return xmlDocument;
        }   

        public virtual int ExecuteNonQueryStoredProcedure(string storedProcedureName, List<SqlParameter> sqlParameterCollection)
        {
            StringBuilder sqlParameterCollectionToString = new StringBuilder();
            int numberOfAffectedRows = 0;
            try
            {
                using (SqlConnection sqlConnection = new SqlConnection(ConnectionString))
                {
                    using (SqlCommand sqlCommand = new SqlCommand())
                    {
                        sqlCommand.CommandType = CommandType.StoredProcedure;
                        sqlCommand.CommandText = storedProcedureName;

                        foreach (SqlParameter sqlParameter in sqlParameterCollection)
                        {
                            sqlParameterCollectionToString.AppendFormat("{0} : {1} {2}", sqlParameter.ParameterName, sqlParameter.Value, Environment.NewLine);
                            sqlCommand.Parameters.Add(sqlParameter);
                        }
                        sqlCommand.Connection = sqlConnection;
                        if (sqlConnection.State == ConnectionState.Closed)
                        {
                            sqlConnection.Open();
                        }
                        numberOfAffectedRows = sqlCommand.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception exception)
            {
                LoggingHandler.LogError(exception, String.Format("ExecuteNonQueryStoredProcedure function is throwing exception. Stored procedure name: {0}. Parameter Collection: {1}.", storedProcedureName, sqlParameterCollectionToString));
                throw exception;
            }

            return numberOfAffectedRows;
        }

        #endregion
    }
}
