using Microsoft.AspNetCore.Mvc;

namespace FamilyExperience.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
