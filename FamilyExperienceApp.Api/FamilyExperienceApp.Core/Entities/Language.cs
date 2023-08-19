using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Core.Entities
{
    public class Language:BaseEntity
    {
        public string Name { get; set; }
        public string Key { get; set; }

        public List<CategoryLanguage> CategoryLanguages { get; set; }
        public List<ColorLanguage> ColorLanguages { get; set; }
        public List<TagLanguage> TagLanguages { get; set; }
        public List<SliderLanguage> SliderLanguages { get; set; }
        public List<ProductLanguage> ProductLanguages { get; set; }

    }
}
