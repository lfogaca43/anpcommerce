using ANPCommerce.Web.Models;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ANPCommerce.Web.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ANPCommerce.Web.Models.ANPCommerceWebContext _context;
        public IList<Banner> Banners { get; set; }
        public IConfiguration _configuration { get; set; }

        public IndexModel(ANPCommerce.Web.Models.ANPCommerceWebContext context, IConfiguration configuration)
        {
            _context = context;
            _configuration = configuration;
        }

        public async Task OnGetAsync()
        {
            Banners = await _context.Banner.ToListAsync();
        }
    }
}
