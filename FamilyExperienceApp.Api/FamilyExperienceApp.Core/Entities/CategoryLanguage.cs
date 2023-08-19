using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Core.Entities
{
    public class CategoryLanguage
    {
        public int CategoryId { get; set; }
        public int LanguageId { get; set; }

        public Category Category { get; set; }
        public Language Language { get; set; }
    }
}
