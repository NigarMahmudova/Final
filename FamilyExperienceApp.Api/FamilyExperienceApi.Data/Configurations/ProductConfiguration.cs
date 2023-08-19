using FamilyExperienceApp.Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApi.Data.Configurations
{
    public class ProductConfiguration : IEntityTypeConfiguration<Product>
    {
        public void Configure(EntityTypeBuilder<Product> builder)
        {
            builder.Property(x => x.Name).IsRequired().HasMaxLength(50);
            builder.Property(x=>x.Desc).IsRequired().HasMaxLength(500);
            builder.Property(x=>x.CostPrice).IsRequired().HasColumnType("decimal(18,2)");
            builder.Property(x=>x.SalePrice).IsRequired().HasColumnType("decimal(18,2)");
            builder.HasOne(x => x.Category).WithMany(x => x.Products);
        }
    }
}
