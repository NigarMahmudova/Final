using FamilyExperienceApp.Service.Dtos.Category;
using FamilyExperienceApp.Service.Dtos.Color;
using FamilyExperienceApp.Service.Dtos.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Interfaces
{
    public interface IColorService
    {
        CreatedResultDto Post(ColorPostDto postDto);
        void Put(int id, ColorPutDto putDto);
        ColorGetDto GetById(int id);
        List<ColorGetAllDto> GetAll();
        void Delete(int id);
    }
}
