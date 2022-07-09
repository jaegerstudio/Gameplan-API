using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Gameplan.WebService.Models.Account
{
    public class UpdateMatrixRequest : BaseRequest
    {
        public UpdateMatrixRequest()
        {

        }

        [Required]
        public string Token { get; set; }

        [Required]
        public double Emotional { get; set; }

        [Required]
        public double Dominance { get; set; }
    }
}