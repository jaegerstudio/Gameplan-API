using System.ComponentModel.DataAnnotations;
namespace Gameplan.WebService.Models.Account
{
    public class RegisterRequest : BaseRequest
    {
        [Required]
        public string Username { get; set; }

        public string Gender { get; set; }

        [Required]
        public int LanguageId { get; set; }

        [Required]
        public string DeviceId { get; set; }
        public long DbVersion { get; set; }
        public string FName { get; set; }
        public string LName { get; set; }

        [Required]
        public string DeviceType { get; set; }

        [Required]
        public string DeviceUniqueId { get; set; }
    }
}