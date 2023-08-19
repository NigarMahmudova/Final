using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Core.Entities
{
    public class ColorLanguage
    {
        public int ColorId { get; set; }
        public int LanguageId { get; set; }

        public Color Color { get; set; }
        public Language Language { get; set; }
    }
}
