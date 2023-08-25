using FamilyExperienceApp.MVC.Areas.Manage.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Text.RegularExpressions;
using static FamilyExperienceApp.MVC.Areas.Manage.ViewModels.CategoryVM;

namespace FamilyExperienceApp.MVC.Areas.Manage.Controllers
{
    [Area("manage")]
    public class CategoryController : Controller
    {
        private HttpClient _client;
        public CategoryController()
        {
            _client = new HttpClient();
            _client.BaseAddress = new Uri("https://localhost:7093/api/");
        }

        public async Task<IActionResult> Index(int page = 1)
        {
            using (var response = await _client.GetAsync($"categories?page={page}"))
            {
                if (response.IsSuccessStatusCode)
                {
                    var content = await response.Content.ReadAsStringAsync();
                    PaginatedVM<CategoryVMItem> vm = JsonConvert.DeserializeObject<PaginatedVM<CategoryVMItem>>(content);
                    return View(vm);
                }
            }

            return View("Error");
            return View();
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Create(CategoryCreateVM vm)
        {
            if (!ModelState.IsValid) return View();

            using (HttpClient client = new HttpClient())
            {
                StringContent requestContent = new StringContent(JsonConvert.SerializeObject(vm), System.Text.Encoding.UTF8, "application/json");

                using (var response = await client.PostAsync("https://localhost:7093/api/categories", requestContent))
                {
                    if (response.IsSuccessStatusCode)
                        return RedirectToAction("index");
                    else if (response.StatusCode == System.Net.HttpStatusCode.BadRequest)
                    {
                        var responseContent = await response.Content.ReadAsStringAsync();
                        var errorVM = JsonConvert.DeserializeObject<ErrorVM>(responseContent);

                        foreach (var item in errorVM.Errors)
                            ModelState.AddModelError(item.Key, item.ErrorMessage);

                        return View();
                    }
                }
            }

            return View("Error");
        }

        public async Task<IActionResult> Edit(int id)
        {
            using (var response = await _client.GetAsync($"categories/{id}"))
            {
                if (response.IsSuccessStatusCode)
                {
                    var content = await response.Content.ReadAsStringAsync();
                    var vm = JsonConvert.DeserializeObject<CategoryEditVM>(content);

                    return View(vm);
                }
            }

            return View("Error");
        }

        [HttpPost]
        public async Task<IActionResult> Edit(int id, CategoryEditVM vm)
        {
            if (!ModelState.IsValid) return View();

            var requestContent = new StringContent(JsonConvert.SerializeObject(vm), System.Text.Encoding.UTF8, "application/json");

            using (var response = await _client.PutAsync($"categories/{id}", requestContent))
            {
                if (response.IsSuccessStatusCode)
                    return RedirectToAction("index");
                else if (response.StatusCode == System.Net.HttpStatusCode.BadRequest)
                {
                    var responseContent = await response.Content.ReadAsStringAsync();
                    var errorVM = JsonConvert.DeserializeObject<ErrorVM>(responseContent);

                    foreach (var item in errorVM.Errors)
                        ModelState.AddModelError(item.Key, item.ErrorMessage);

                    return View();
                }
            }

            return View("error");
        }

        [HttpDelete]
        public async Task<IActionResult> Delete(int id)
        {
            using (var response = await _client.DeleteAsync($"categories/{id}"))
            {
                if (response.IsSuccessStatusCode)
                {
                    var content = await response.Content.ReadAsStringAsync();

                    CategoryVM vm = new CategoryVM
                    {
                        Categories = JsonConvert.DeserializeObject<List<CategoryVMItem>>(content)
                    };

                    return View(vm);
                }
            }

            return View("Error");
        }
    }
}
