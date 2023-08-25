using FamilyExperienceApp.Service.Dtos.Common;
using FamilyExperienceApp.Service.Dtos.Product;
using FamilyExperienceApp.Service.Dtos.Slider;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Interfaces
{
    public interface IProductService
    {
        CreatedResultDto Post(ProductPostDto postDto);
        void Put(int id, ProductPutDto putDto);
        ProductGetDto GetById(int id);
        List<ProductGetAllDto> GetAll();
        PaginatedListDto<ProductGetPaginatedListItemDto> GetAllPaginated(int page);
        void Delete(int id);
    }
}
