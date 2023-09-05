using Microsoft.AspNetCore.Mvc;

namespace FamilyExperienceApp.Controllers
{
    public class BasketController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
