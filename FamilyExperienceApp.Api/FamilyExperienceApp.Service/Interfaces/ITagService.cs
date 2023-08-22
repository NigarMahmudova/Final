using FamilyExperienceApp.Service.Dtos.Color;
using FamilyExperienceApp.Service.Dtos.Common;
using FamilyExperienceApp.Service.Dtos.Tag;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Interfaces
{
    public interface ITagService
    {
        CreatedResultDto Post(TagPostDto postDto);
        void Put(int id, TagPutDto putDto);
        TagGetDto GetById(int id);
        List<TagGetAllDto> GetAll();
        PaginatedListDto<TagGetPaginatedListItemDto> GetAllPaginated(int page);
        void Delete(int id);
    }
}
