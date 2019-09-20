using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using SendGrid;
using SendGrid.Helpers.Mail;

namespace ANPCommerce.Functions
{
    public class ContactModel
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public string Subject { get; set; }
        public string Message { get; set; }
    }
    public static class SendMail
    {
        [FunctionName("SendMail")]
        public static async Task<IActionResult> Run([HttpTrigger(AuthorizationLevel.Anonymous, "post", Route = null)] HttpRequest req, ILogger log)
        {
            try
            {
                log.LogInformation("Entrou na API de envio de email ativada por um HTTP Trigger.");

                if (req.Method == HttpMethods.Post)
                {
                    string requestBody = await new StreamReader(req.Body).ReadToEndAsync();
                    ContactModel contactModel = JsonConvert.DeserializeObject<ContactModel>(requestBody);

                    var apiKey = Environment.GetEnvironmentVariable("SEND_GRID_KEY");
                    var client = new SendGridClient(apiKey);
                    var from = new EmailAddress("contato@azurenapratica.com", "Azure na Prática");
                    var subject = contactModel.Subject;
                    var to = new EmailAddress(contactModel.Email, contactModel.Name);
                    var msg = MailHelper.CreateSingleEmail(from, to, subject, contactModel.Message, contactModel.Message);
                    var response = await client.SendEmailAsync(msg);

                    if(response.StatusCode == System.Net.HttpStatusCode.Accepted)
                    {
                        return new OkObjectResult($"E-mail enviado com sucesso.");
                    }

                    return new BadRequestObjectResult("Erro ao enviar email.");
                }
            }
            catch (Exception ex)
            {
                log.LogError(ex, ex.Message);
            }

            return null;
        }
    }
}
