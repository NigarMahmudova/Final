using FamilyExperienceApp.Service.Dtos.Common;
using FamilyExperienceApp.Service.Dtos.Slider;
using FamilyExperienceApp.Service.Dtos.Tag;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Interfaces
{
    public interface ISliderService
    {
        CreatedResultDto Post(SliderPostDto postDto);
        void Put(int id, SliderPutDto putDto);
        SliderGetDto GetById(int id);
        List<SliderGetAllDto> GetAll();
        PaginatedListDto<SliderGetPaginatedListItemDto> GetAllPaginated(int page);
        void Delete(int id);
    }
}
