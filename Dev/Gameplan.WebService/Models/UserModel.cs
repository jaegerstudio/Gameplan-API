using System;

namespace Gameplan.WebService.Models
{
    public class UserModel
    {
        public Guid UserId { get; set; }
        public string DisplayName { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public int? CompanyId { get; set; }
        public int? LanguageId { get; set; }
        public double? Emotional { get; set; }
        public double? Dominance { get; set; }
        public string LocalizationName { get; set; }
        public string Avatar { get; set; }
        public string JobTitle { get; set; }
        public string Token { get; set; }
        public long DbVersion { get; set; }
        public long UserExpDate { get; set; }
        public long UserInitDate { get; set; }
        public long CreateDate { get; set; }
        public string DeviceUniqueID { get; set; }
    }
}