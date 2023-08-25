using System.ComponentModel.DataAnnotations;

namespace FamilyExperience.Entities
{
    public class Category
    {
        public int Id { get; set; }
        [Required]
        [MaxLength(35)]
        public string Name { get; set; }

        public List<Product> Products { get; set; }
    }
}
