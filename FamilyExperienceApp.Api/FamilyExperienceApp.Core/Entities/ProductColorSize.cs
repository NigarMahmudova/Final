using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Core.Entities
{
    public class ProductColorSize
    {
        public int ProductId { get; set; }
        public int ColorId { get; set; }
        public int SizeId { get; set; }

        public Product Product { get; set; }
        public Color Color { get; set; }
        public Size Size { get; set; }
    }
}
