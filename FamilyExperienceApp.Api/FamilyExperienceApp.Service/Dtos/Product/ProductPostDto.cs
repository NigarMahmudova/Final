using FluentValidation;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Dtos.Product
{
    public class ProductPostDto
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
    }

    public class ProductPostDtoValidator : AbstractValidator<ProductPostDto> 
    {
        public ProductPostDtoValidator()
        {
            RuleFor(x => x.CategoryId).GreaterThan(0);
            RuleFor(x => x.Name).MaximumLength(50);
            RuleFor(x => x.Desc).MaximumLength(150);
            RuleFor(x => x.CostPrice).GreaterThanOrEqualTo(0);
            RuleFor(x => x.SalePrice).GreaterThanOrEqualTo(x => x.CostPrice);
        }
    }

}
