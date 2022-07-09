using System;

namespace Gameplan.Core.Caching
{
    /// <summary>
    /// Extensions
    /// </summary>
    public static class CacheExtensions
    {
        public static T Get<T>(this ICacheManager cacheManager, string key, Func<T> acquire)
        {
            return Get(cacheManager, key, 60, acquire);
        }

        public static T Get<T>(this ICacheManager cacheManager, string key, int cacheTime, Func<T> acquire)
        {
            if (cacheManager.IsSet(key))
                return cacheManager.Get<T>(key);
            var result = acquire();
            //if (result != null)
            /**/
            cacheManager.Remove(key);
            /**/
            cacheManager.Set(key, result, cacheTime);
            return result;
        }
    }
}
