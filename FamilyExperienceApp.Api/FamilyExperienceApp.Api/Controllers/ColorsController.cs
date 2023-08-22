using FamilyExperienceApp.Service.Dtos.Category;
using FamilyExperienceApp.Service.Dtos.Color;
using FamilyExperienceApp.Service.Dtos.Common;
using FamilyExperienceApp.Service.Implementations;
using FamilyExperienceApp.Service.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace FamilyExperienceApp.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ColorsController : ControllerBase
    {
        private readonly IColorService _colorService;

        public ColorsController(IColorService colorService)
        {
            _colorService = colorService;
        }

        [HttpGet("all")]
        public ActionResult<List<ColorGetAllDto>> GetAll()
        {
            return Ok(_colorService.GetAll());
        }

        [HttpGet("")]
        public ActionResult<PaginatedListDto<ColorGetPaginatedListItemDto>> GetAll(int page = 1)
        {
            return Ok(_colorService.GetAllPaginated(page));
        }

        [HttpGet("{id}")]
        public ActionResult<ColorGetDto> Get(int id)
        {
            return Ok(_colorService.GetById(id));
        }

        [HttpPost("")]
        public IActionResult Post(ColorPostDto colorDto)
        {
            return StatusCode(201, _colorService.Post(colorDto));
        }

        [HttpPut("{id}")]
        public IActionResult Put(int id, ColorPutDto colorDto)
        {
            _colorService.Put(id, colorDto);
            return NoContent();
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _colorService.Delete(id);
            return NoContent();
        }
    }
}
