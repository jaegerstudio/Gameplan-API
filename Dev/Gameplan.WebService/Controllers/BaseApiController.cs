using System;
using System.Linq;
using System.Web.Http;
using Gameplan.Core;
using Gameplan.Core.Caching;
using Gameplan.Core.Configuration;
using Gameplan.Data;

namespace Gameplan.WebService.Controllers
{
    public enum UserState
    {
        NORMAL, WARNING, EXPIRED    
    }

    public class BaseApiController : ApiController
    {
        public IDbConnection DbConn;
        public MemoryCacheManager CacheManager;
        public string Key;

        public BaseApiController()
        {
            DbConn = new DbConnection();
            CacheManager = new MemoryCacheManager();
            Key = ModelCacheEventConsumer.SIGN_IN_KEY;
        }

        public UserState getUserState(Guid UserId)
        {

            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var userInfo = (from s in context.UserInfo where s.Id == UserId select s).FirstOrDefault();

                if (userInfo != null && userInfo.UserExpDate != null)
                {
                    //long timeTemp = userInfo.UserExpDate != null ? userInfo.UserExpDate.Value : 0;

                    DateTime expDate = userInfo.UserExpDate.Value;
                    DateTime lastExpDateTime = new DateTime(expDate.Year, expDate.Month, expDate.Day, 23, 59, 59);

                    TimeSpan timeSpan = lastExpDateTime - DateTime.Now;

                    if (timeSpan.TotalDays < 1) return UserState.EXPIRED;

                    if (timeSpan.TotalDays < 11) return UserState.WARNING;
                }
            }

            return UserState.NORMAL;
        }

        public long getUserExpDate(Guid UserId)
        {
            long expDateInMiliseconds = 0;
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var userInfo = (from s in context.UserInfo where s.Id == UserId select s).FirstOrDefault();

                if (userInfo != null && userInfo.UserExpDate != null)
                {
                    expDateInMiliseconds = Convert.ToInt64(
                        userInfo.UserExpDate.Value.ToUniversalTime()
                            .Subtract(new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc))
                            .TotalMilliseconds);
                }
            }

            return expDateInMiliseconds;
        }

    }

    
}
