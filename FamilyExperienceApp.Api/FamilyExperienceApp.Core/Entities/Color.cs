using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Core.Entities
{
    public class Color:BaseEntity
    {
        public string Name { get; set; }

        public List<ProductImage> ProductImages { get; set; } = new List<ProductImage>();
        public List<ProductColorSize> ProductColorSizes { get; set; }
        public List<ColorLanguage> ColorLanguages { get; set; }

    }
}
