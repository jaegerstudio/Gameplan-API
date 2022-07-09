using System;

namespace Gameplan.WebService.Models.Contacts
{
    public class EditRequest : BaseRequest
    {
        public Guid ContactId { get; set; }
        public string Fname { get; set; }
        public string Lname { get; set; }
        public string Avatar { get; set; }
        public int ProductId { get; set; }
        public string Gender { get; set; }
        public byte Age { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string Comment { get; set; }
    }
}