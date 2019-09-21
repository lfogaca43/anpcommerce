using ANPCommerce.Web.Models;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Configuration;
using System;
using System.Net.Http;
using System.Threading.Tasks;

namespace ANPCommerce.Web.Pages
{
    public class ContactModel : PageModel
    {
        public IConfiguration _configuration;
        public ContactModel(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public void OnGet()
        {

        }

        public async Task OnPost()
        {
            try
            {
                var name = Request.Form["name"];
                var email = Request.Form["email"];
                var subject = Request.Form["subject"];
                var message = Request.Form["message"];

                var contact = new Contact(name, email, subject, message);

                var httpClient = new HttpClient();

                var response = await httpClient.PostAsJsonAsync(_configuration.GetSection("Services:SendMail").Value, contact);

                response.EnsureSuccessStatusCode();

                if (response.IsSuccessStatusCode)
                {
                    ViewData["IsContactSuccess"] = "true";
                }
                else
                {
                    ViewData["IsContactError"] = "true";
                }
            }
            catch(Exception ex)
            {
                var exception = ex;
                ViewData["IsContactError"] = "true";
            }
        }
    }
}