using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Xml;

namespace GamePlan.Business
{
    public class Country
        : Database
    {
        public XElement GetAll()
        {
            XElement xml = null;
            using (GamePlanEntities context = new GamePlanEntities())
            {
                var countries = (from c in context.PC_MobileCountry select new { c.CountryID, c.CountryName });
                xml = new XElement("countries", countries.ToList().Select(a => new XElement("country", new XAttribute("countryId", a.CountryID), new XAttribute("countryName", a.CountryName))));                
            }
            return xml;
        }
    }
}
