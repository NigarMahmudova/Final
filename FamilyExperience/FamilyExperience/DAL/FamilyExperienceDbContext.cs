using FamilyExperience.Entities;
using Microsoft.EntityFrameworkCore;

namespace FamilyExperience.DAL
{
    public class FamilyExperienceDbContext:DbContext
    {
        public FamilyExperienceDbContext(DbContextOptions<FamilyExperienceDbContext> options) : base(options) { }

        public DbSet<Category> Categories { get; set; }
        public DbSet<Color> Colors { get; set; }
        public DbSet<Size> Sizes { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<Slider> Sliders { get; set; }
        public DbSet<Setting> Settings { get; set; }
        public DbSet<ProductImage> ProductImages { get; set; }
        public DbSet<ProductSize> ProductSizes { get; set; }       

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ProductSize>().HasKey(x => new { x.SizeId, x.ProductId });
            base.OnModelCreating(modelBuilder);
        }
    }
}
