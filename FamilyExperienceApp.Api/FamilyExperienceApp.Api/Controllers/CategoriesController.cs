using FamilyExperienceApp.Service.Dtos.Category;
using FamilyExperienceApp.Service.Dtos.Common;
using FamilyExperienceApp.Service.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace FamilyExperienceApp.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CategoriesController : ControllerBase
    {
        private readonly ICategoryService _categoryService;

        public CategoriesController(ICategoryService categoryService)
        {
            _categoryService = categoryService;
        }

        [HttpGet("all")]
        public ActionResult<List<CategoryGetAllDto>> GetAll()
        {
            return Ok(_categoryService.GetAll());
        }

        [HttpGet("")]
        public ActionResult<PaginatedListDto<CategoryGetPaginatedListItemDto>> GetAll(int page = 1)
        {
            return Ok(_categoryService.GetAllPaginated(page));
        }

        [HttpGet("{id}")]
        public ActionResult<CategoryGetDto> Get(int id)
        {
            return Ok(_categoryService.GetById(id));
        }

        [HttpPost("")]
        public IActionResult Post(CategoryPostDto categoryDto)
        {
            return StatusCode(201, _categoryService.Post(categoryDto));
        }

        [HttpPut("{id}")]
        public IActionResult Put(int id, CategoryPutDto categoryDto)
        {
            _categoryService.Put(id, categoryDto);
            return NoContent();
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _categoryService.Delete(id);
            return NoContent();
        }
    }
}
