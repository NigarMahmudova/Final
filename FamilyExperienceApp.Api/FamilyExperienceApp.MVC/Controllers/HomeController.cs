using Microsoft.AspNetCore.Mvc;

namespace FamilyExperienceApp.MVC.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
