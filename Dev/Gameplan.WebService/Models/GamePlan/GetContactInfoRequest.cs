using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Gameplan.WebService.Models.GamePlan
{
    public class GetContactInfoRequest : BaseRequest
    {
        [Required]
        public int LanguageID { get; set; }
    }
}