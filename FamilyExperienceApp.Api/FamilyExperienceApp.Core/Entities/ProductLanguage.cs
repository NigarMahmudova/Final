using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Core.Entities
{
    public class ProductLanguage
    {
        public int ProductId { get; set; }
        public int LanguageId { get; set; }

        public Product Product { get; set; }
        public Language Language { get; set; }
    }
}
