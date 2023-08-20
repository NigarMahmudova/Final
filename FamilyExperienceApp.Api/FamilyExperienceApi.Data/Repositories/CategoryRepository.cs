using FamilyExperienceApp.Core.Entities;
using FamilyExperienceApp.Core.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApi.Data.Repositories
{
    public class CategoryRepository:Repository<Category>, ICategoryRepository
    {
        public CategoryRepository(FamExpDBContext context) : base(context) { }
    }
}
