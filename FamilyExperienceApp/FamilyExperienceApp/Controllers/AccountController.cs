using FamilyExperienceApp.DAL;
using FamilyExperienceApp.Entities;
using FamilyExperienceApp.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Data;

namespace FamilyExperienceApp.Controllers
{
    public class AccountController : Controller
    {
        private readonly UserManager<AppUser> _userManager;
        private readonly SignInManager<AppUser> _signInManager;
        private readonly FamilyExperienceDbContext _context;

        public AccountController(UserManager<AppUser> userManager, SignInManager<AppUser> signInManager, FamilyExperienceDbContext context)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _context = context;
        }

        public IActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Register(MemberRegisterVM memberVM)
        {
            if (!ModelState.IsValid) return View();

            AppUser user = new AppUser
            {
                FullName = memberVM.FullName,
                Email = memberVM.Email,
                UserName = memberVM.UserName,
                PhoneNumber = memberVM.Phone,
                IsAdmin = false
            };

            var result = await _userManager.CreateAsync(user, memberVM.Password);

            if (!result.Succeeded)
            {
                foreach (var item in result.Errors)
                    ModelState.AddModelError("", item.Description);

                return View();
            }

            await _userManager.AddToRoleAsync(user, "Member");

            return RedirectToAction("Login");
        }

        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Login(MemberLoginVM memberVM, string returnUrl = null)
        {
            if (!ModelState.IsValid) return View();

            AppUser member = await _userManager.FindByNameAsync(memberVM.UserName);

            if (member == null || member.IsAdmin)
            {
                ModelState.AddModelError("", "UserName or Password is incorrect!");
                return View();
            }

            var result = await _signInManager.PasswordSignInAsync(member, memberVM.Password, memberVM.RememberMe, true);

            if (result.IsLockedOut)
            {
                ModelState.AddModelError("", "User is locked out for 15 seconds");
                return View();
            }
            else if (!result.Succeeded)
            {
                ModelState.AddModelError("", "UserName or Password is incorrect!");
                return View();
            }

            return returnUrl == null ? RedirectToAction("index", "home") : Redirect(returnUrl);
        }


        public async Task<IActionResult> Logout()
        {
            await _signInManager.SignOutAsync();
            return RedirectToAction("index", "home");
        }
    }
}
