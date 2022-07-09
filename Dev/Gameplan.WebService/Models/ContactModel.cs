using System;
using System.Collections.Generic;

namespace Gameplan.WebService.Models
{
    public class ContactModel
    {
        public Guid Id { get; set; }
        public string DisplayName { get; set; }
        public string Firstname { get; set; }
        public string Lastname { get; set; }
        public string Avatar { get; set; }
        public int? ProductId { get; set; }
        public string Gender { get; set; }
        public int? Age { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string Comments { get; set; }
        public short Status { get; set; }
        public long CreateDate { get; set; }
        public object Completed { get; set; }
        public List<object> Pending { get; set; }
    }
}