using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Core.Entities
{
    public class Size:BaseEntity
    {
        public string Name { get; set; }

        public List<ProductColorSize> ProductColorSizes { get; set; }
    }
}
