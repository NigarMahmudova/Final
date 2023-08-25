using System.ComponentModel.DataAnnotations;

namespace FamilyExperience.Entities
{
    public class Setting
    {
        [Key]
        public string Key { get; set; }
        [Required]
        [MaxLength(100)]
        public string Value { get; set; }
    }
}
