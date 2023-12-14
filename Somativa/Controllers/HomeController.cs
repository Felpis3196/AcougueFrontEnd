using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Somativa.Data;
using Somativa.Models;
using System.Diagnostics;

namespace Somativa.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly SprintContext _context;
        public HomeController(ILogger<HomeController> logger, SprintContext context)
        {
            _context = context;
            _logger = logger;
        }
        public async Task<IActionResult> IndexAsync()
        {
            var sprintContext = _context.Produtos.Include(p => p.Categoria).Include(p => p.Fornecedor);
            return View(await sprintContext.ToListAsync());
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}