using System.Net;
using System.Web.Http;
using Newtonsoft.Json;

namespace Gameplan.WebService.Controllers
{
    public class WeatherController : BaseApiController
    {
        [HttpGet]
        public object Get(int woeid, char degreeType)
        {
            const string yahooWeatherUrl = "http://api.wunderground.com/api/43001367864b1198/forecast/lang:EN/q/CA/San_Francisco.json";
            object value;

            using (var client = new WebClient())
            {
                string url = string.Format(yahooWeatherUrl, woeid, degreeType);
                value = JsonConvert.DeserializeObject<object>(client.DownloadString(url));
            }
            return value;
        }
    }
}
