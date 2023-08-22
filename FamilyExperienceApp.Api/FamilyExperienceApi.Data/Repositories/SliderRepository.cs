using FamilyExperienceApp.Core.Entities;
using FamilyExperienceApp.Core.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApi.Data.Repositories
{
    public class SliderRepository:Repository<Slider>, ISliderRepository
    {
        public SliderRepository(FamExpDBContext context):base(context) { }
        
    }
}
