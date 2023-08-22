using FamilyExperienceApp.Service.Dtos.Common;
using FamilyExperienceApp.Service.Dtos.Product;
using FamilyExperienceApp.Service.Dtos.Slider;
using FamilyExperienceApp.Service.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace FamilyExperienceApp.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SlidersController : ControllerBase
    {
        private readonly ISliderService _sliderService;

        public SlidersController(ISliderService sliderService)
        {
            _sliderService = sliderService;
        }

        [HttpPost("")]
        public IActionResult Create([FromForm] SliderPostDto sliderDto)
        {
            return StatusCode(201, _sliderService.Post(sliderDto));
        }

        [HttpGet("{id}")]
        public ActionResult<SliderGetDto> Get(int id)
        {
            return Ok(_sliderService.GetById(id));
        }
        [HttpGet("all")]
        public ActionResult<List<SliderGetAllDto>> GetAll()
        {
            return Ok(_sliderService.GetAll());
        }

        [HttpGet("")]
        public ActionResult<PaginatedListDto<SliderGetPaginatedListItemDto>> GetAll(int page = 1)
        {
            return Ok(_sliderService.GetAllPaginated(page));
        }
        
        [HttpPut("{id}")]
        public IActionResult Edit(int id, [FromForm] SliderPutDto sliderDto)
        {
            _sliderService.Put(id, sliderDto);

            return NoContent();
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _sliderService.Delete(id);
            return NoContent();
        }
    }
}
