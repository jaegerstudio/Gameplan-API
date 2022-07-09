using System.Configuration;

namespace Gameplan.Core.Configuration
{
    public class DbConnection : IDbConnection
    {
        private readonly string _connectStr;

        public DbConnection()
        {
            
            _connectStr = ConfigurationManager.AppSettings[ConnectionNames.ConnectStr];
        }

        public string ConnectStr
        {
            get { return _connectStr; }
        }
    }
}
