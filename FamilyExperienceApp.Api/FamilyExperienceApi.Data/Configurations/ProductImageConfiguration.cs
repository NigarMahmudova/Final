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
    public class ProductImageConfiguration : IEntityTypeConfiguration<ProductImage>
    {
        public void Configure(EntityTypeBuilder<ProductImage> builder)
        {
            builder.Property(x => x.ImageName).IsRequired().HasMaxLength(100);
            builder.HasOne(x => x.Product).WithMany(x => x.ProductImages);
            builder.HasOne(x => x.Color).WithMany(x => x.ProductImages);
        }
    }
}
