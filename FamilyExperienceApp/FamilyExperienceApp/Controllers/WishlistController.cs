using FamilyExperienceApp.DAL;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace FamilyExperienceApp.Controllers
{
    public class WishlistController : Controller
    {
        private readonly FamilyExperienceDbContext _context;

        public WishlistController(FamilyExperienceDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            var wishlist = _context.WishlistItems.Include(x=>x.Product).ThenInclude(x=>x.ProductImages).ToList();
            return View(wishlist);
        }
    }
}
