using FamilyExperienceApp.Service.Dtos.Category;
using FamilyExperienceApp.Service.Dtos.Common;
using FamilyExperienceApp.Service.Dtos.Tag;
using FamilyExperienceApp.Service.Implementations;
using FamilyExperienceApp.Service.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace FamilyExperienceApp.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TagsController : ControllerBase
    {
        private readonly ITagService _tagService;

        public TagsController(ITagService tagService)
        {
            _tagService = tagService;
        }


        [HttpGet("all")]
        public ActionResult<List<TagGetAllDto>> GetAll()
        {
            return Ok(_tagService.GetAll());
        }

        [HttpGet("")]
        public ActionResult<PaginatedListDto<CategoryGetPaginatedListItemDto>> GetAll(int page = 1)
        {
            return Ok(_tagService.GetAllPaginated(page));
        }

        [HttpGet("{id}")]
        public ActionResult<TagGetDto> Get(int id)
        {
            return Ok(_tagService.GetById(id));
        }

        [HttpPost("")]
        public IActionResult Post(TagPostDto tagDto)
        {
            return StatusCode(201, _tagService.Post(tagDto));
        }

        [HttpPut("{id}")]
        public IActionResult Put(int id, TagPutDto tagDto)
        {
            _tagService.Put(id, tagDto);
            return NoContent();
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _tagService.Delete(id);
            return NoContent();
        }
    }
}
