using FamilyExperienceApp.Service.Dtos.Category;
using FamilyExperienceApp.Service.Dtos.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Interfaces
{
    public interface ICategoryService
    {
        CreatedResultDto Post(CategoryPostDto postDto);
        void Put(int id, CategoryPutDto putDto);
        CategoryGetDto GetById(int id);
        List<CategoryGetAllDto> GetAll();
        PaginatedListDto<CategoryGetPaginatedListItemDto> GetAllPaginated(int page);
        void Delete(int id);
    }
}
