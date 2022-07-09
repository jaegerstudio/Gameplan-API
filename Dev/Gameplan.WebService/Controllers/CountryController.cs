using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using Gameplan.Data;
using Gameplan.WebService.Models;

namespace Gameplan.WebService.Controllers
{
    public class CountryController : BaseApiController
    {
        [HttpGet]
        public List<CountryModel> GetAll()
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var countries = (from s in context.CountryInfo
                                 select s).ToList();
                return countries.Select(country => new CountryModel
                                                       {
                                                           CountryId = country.Id,
                                                           CountryName = country.Name
                                                       }).ToList();
            }
        }

        [HttpGet]
        public List<LanguageModel> GetAllLanguages()
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var languages = (from s in context.LanguageInfo
                                 select s).ToList();

                return languages.Select(language => new LanguageModel
                {
                    LanguageId = language.Id,
                    LanguageLocalization = language.Localization,
                    LanguageName = language.Name
                }).ToList();
            }
        }
    }
}
