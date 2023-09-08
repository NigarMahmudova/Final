using FamilyExperienceApp.DAL;
using FamilyExperienceApp.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;

namespace FamilyExperienceApp.Controllers
{
    public class ShopController : Controller
    {
        private readonly FamilyExperienceDbContext _context;

        public ShopController(FamilyExperienceDbContext context)
        {
            _context = context;
        }
        public IActionResult Index(int? categoryId = null, List<int> colorId = null, decimal? minPrice = null, decimal? maxPrice = null, string sort = "A_to_Z")
        {
            var query = _context.Products.Include(x => x.ProductImages.Where(x => x.PosterStatus == true)).Include(x => x.Color)
                .Include(x => x.Category).AsQueryable();

            ShopVM vm = new ShopVM();
            vm.MinPrice = query.Min(x => x.SalePrice);
            vm.MaxPrice = query.Max(x => x.SalePrice);


            if (categoryId != null)
            {
                query = query.Where(x => x.CategoryId == categoryId);
            }
            if (colorId.Count > 0)
            {
                query = query.Where(x => colorId.Contains(x.ColorId));
            }
            if (minPrice != null && maxPrice != null)
            {
                query = query.Where(x => x.SalePrice >= minPrice && x.SalePrice <= maxPrice);
            }

            switch (sort)
            {
                case "Z_to_A":
                    query = query.OrderByDescending(x => x.Name);
                    break;
                case "Low_to_High":
                    query = query.OrderBy(x => x.SalePrice);
                    break;
                case "High_to_Low":
                    query = query.OrderByDescending(x => x.SalePrice);
                    break;
                default:
                    query = query.OrderBy(x => x.Name);
                    break;
            }

            vm.Products = query.ToList();
            vm.Categories = _context.Categories.Include(x => x.Products).ToList();
            vm.Colors = _context.Colors.Include(x => x.Products).ToList();
            vm.SelectedCategoryId = categoryId;
            vm.SelectedColorIds = colorId;
            vm.SelectedMinPrice = minPrice == null ? vm.MinPrice : (decimal)minPrice;
            vm.SelectedMaxPrice = maxPrice == null ? vm.MaxPrice : (decimal)maxPrice;

            vm.SortItems = new List<SelectListItem>
            {
                new SelectListItem("Sort by: (A-Z)","A_to_Z",sort=="A_to_Z"),
                new SelectListItem("Sort by: (Z-A)","Z_to_A",sort=="Z_to_A"),
                new SelectListItem("Sort by: (Low-High)","Low_to_High",sort=="Low_to_High"),
                new SelectListItem("Sort by: (High-Low)","High_to_Low",sort=="High_to_Low"),
            };

            return View(vm);
        }
    }
}
