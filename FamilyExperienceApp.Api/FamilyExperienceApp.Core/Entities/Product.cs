using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Core.Entities
{
    public class Product:BaseTrackedEntity
    {
        public int CategoryId { get; set; }
        public string Name { get; set; }
        public string Desc { get; set; }
        public decimal SalePrice { get; set; }
        public decimal CostPrice { get; set; }
        public decimal DiscountPercent { get; set; }
        public bool StockStatus { get; set; }
        public bool IsNew { get; set; }
        public bool? Gender { get; set; }

        public Category Category { get; set; }
        public List<ProductImage> ProductImages { get; set; } = new List<ProductImage>();
        public List<ProductTag> ProductTags { get; set; } = new List<ProductTag>();
        public List<ProductColorSize> ProductColorSizes { get; set; } = new List<ProductColorSize>();
        public List<ProductLanguage> ProductLanguages { get; set; }
    }
}
