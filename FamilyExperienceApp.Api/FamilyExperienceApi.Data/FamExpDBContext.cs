using FamilyExperienceApi.Data.Configurations;
using FamilyExperienceApp.Core.Entities;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApi.Data
{
    public class FamExpDBContext:IdentityDbContext
    {
        public FamExpDBContext(DbContextOptions<FamExpDBContext> options):base(options){ }

        public DbSet<Language> Languages { get; set; }
        public DbSet<AppUser> AppUsers { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Color> Colors { get; set; }
        public DbSet<Size> Sizes { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<Tag> Tags { get; set; }
        public DbSet<Slider> Sliders { get; set; }
        public DbSet<ProductImage> ProductImages { get; set; }
        public DbSet<ProductTag> ProductTags { get; set; }
        public DbSet<ProductColorSize> ProductColorSizes { get; set; }
        public DbSet<CategoryLanguage> CategoryLanguages { get; set; }
        public DbSet<ColorLanguage> ColorLanguages { get; set; }
        public DbSet<TagLanguage> TagLanguages { get; set; }
        public DbSet<SliderLanguage> SliderLanguages { get; set; }
        public DbSet<ProductLanguage> ProductLanguages { get; set; }



        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfigurationsFromAssembly(typeof(CategoryConfiguration).Assembly);
            base.OnModelCreating(modelBuilder);

            //ManyToMany relation between product and tag

            modelBuilder.Entity<ProductTag>()
                .HasKey(x => new { x.ProductId, x.TagId });

            modelBuilder.Entity<Product>()
                .HasMany(x => x.ProductTags)
                .WithOne(x => x.Product)
                .HasForeignKey(x => x.ProductId);

            modelBuilder.Entity<Tag>()
                .HasMany(x => x.ProductTags)
                .WithOne(x => x.Tag)
                .HasForeignKey(x => x.TagId);



            //ManyToMany relation between product, color and size

            modelBuilder.Entity<ProductColorSize>()
                .HasKey(x => new { x.ProductId, x.ColorId, x.SizeId });

            modelBuilder.Entity<ProductColorSize>()
                .HasOne(x => x.Product)
                .WithMany(x => x.ProductColorSizes)
                .HasForeignKey(x => x.ProductId);

            modelBuilder.Entity<ProductColorSize>()
                .HasOne(x => x.Color)
                .WithMany(x => x.ProductColorSizes)
                .HasForeignKey(x => x.ColorId);

            modelBuilder.Entity<ProductColorSize>()
                .HasOne(x => x.Size)
                .WithMany(x => x.ProductColorSizes)
                .HasForeignKey(x => x.SizeId);



            //ManyToMany relation between category and language

            modelBuilder.Entity<CategoryLanguage>()
                .HasKey(x => new { x.CategoryId, x.LanguageId });

            modelBuilder.Entity<Category>()
                .HasMany(x => x.CategoryLanguages)
                .WithOne(x => x.Category)
                .HasForeignKey(x => x.CategoryId);

            modelBuilder.Entity<Language>()
                .HasMany(x => x.CategoryLanguages)
                .WithOne(x => x.Language)
                .HasForeignKey(x => x.LanguageId);


            //ManyToMany relation between color and language

            modelBuilder.Entity<ColorLanguage>()
                .HasKey(x => new { x.ColorId, x.LanguageId });

            modelBuilder.Entity<Color>()
                .HasMany(x => x.ColorLanguages)
                .WithOne(x => x.Color)
                .HasForeignKey(x => x.ColorId);

            modelBuilder.Entity<Language>()
                .HasMany(x => x.ColorLanguages)
                .WithOne(x => x.Language)
                .HasForeignKey(x => x.LanguageId);


            //ManyToMany relation between tag and language

            modelBuilder.Entity<TagLanguage>()
                .HasKey(x => new { x.TagId, x.LanguageId });

            modelBuilder.Entity<Tag>()
                .HasMany(x => x.TagLanguages)
                .WithOne(x => x.Tag)
                .HasForeignKey(x => x.TagId);

            modelBuilder.Entity<Language>()
                .HasMany(x => x.TagLanguages)
                .WithOne(x => x.Language)
                .HasForeignKey(x => x.LanguageId);



            //ManyToMany relation between slider and language

            modelBuilder.Entity<SliderLanguage>()
                .HasKey(x => new { x.SliderId, x.LanguageId });

            modelBuilder.Entity<Slider>()
                .HasMany(x => x.SliderLanguages)
                .WithOne(x => x.Slider)
                .HasForeignKey(x => x.SliderId);

            modelBuilder.Entity<Language>()
                .HasMany(x => x.SliderLanguages)
                .WithOne(x => x.Language)
                .HasForeignKey(x => x.LanguageId);



            //ManyToMany relation between product and language

            modelBuilder.Entity<ProductLanguage>()
                .HasKey(x => new { x.ProductId, x.LanguageId });

            modelBuilder.Entity<Product>()
                .HasMany(x => x.ProductLanguages)
                .WithOne(x => x.Product)
                .HasForeignKey(x => x.ProductId);

            modelBuilder.Entity<Language>()
                .HasMany(x => x.ProductLanguages)
                .WithOne(x => x.Language)
                .HasForeignKey(x => x.LanguageId);
        }
    }
}
