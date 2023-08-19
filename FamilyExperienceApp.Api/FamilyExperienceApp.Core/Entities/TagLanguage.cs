using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Core.Entities
{
    public class TagLanguage
    {
        public int TagId { get; set; }
        public int LanguageId { get; set; }

        public Tag Tag { get; set; }
        public Language Language { get; set; }
    }
}
