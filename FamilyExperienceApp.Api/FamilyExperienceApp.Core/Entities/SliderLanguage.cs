using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Core.Entities
{
    public class SliderLanguage
    {
        public int SliderId { get; set; }
        public int LanguageId { get; set; }

        public Slider Slider { get; set; }
        public Language Language { get; set; }
    }
}
