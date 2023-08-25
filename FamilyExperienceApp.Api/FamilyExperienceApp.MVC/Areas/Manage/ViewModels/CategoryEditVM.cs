using System.ComponentModel.DataAnnotations;

namespace FamilyExperienceApp.MVC.Areas.Manage.ViewModels
{
    public class CategoryEditVM
    {
        [Required]
        [MaxLength(35)]
        public string Name { get; set; }
    }
}
