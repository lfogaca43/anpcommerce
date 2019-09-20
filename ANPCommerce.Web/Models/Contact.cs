using System.ComponentModel.DataAnnotations;

namespace ANPCommerce.Web.Models
{
    public class Contact
    {
        public Contact(string name, string email, string subject, string message)
        {
            Name = name;
            Email = email;
            Subject = subject;
            Message = message;
        }

        public string Name { get; set; }
        public string Email { get; set; }
        public string Subject { get; set; }
        public string Message { get; set; }
    }
}
