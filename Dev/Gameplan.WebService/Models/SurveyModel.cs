using System;

namespace Gameplan.WebService.Models
{
    public class SurveyModel
    {
        public Guid SurveyId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Gender { get; set; }
        public int? Age { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public long? SurveyDate { get; set; }
        public string Address { get; set; }
        public int RegId { get; set; }
        public int? ProductId { get; set; }
        public string Comments { get; set; }
    }
}