using System.ComponentModel.DataAnnotations;

namespace FamilyExperience.Entities
{
    public class Slider
    {
        public int Id { get; set; }
        public int Order { get; set; }
        [MaxLength(50)]
        public string Title { get; set; }
        [MaxLength(150)]
        public string Desc { get; set; }
        [MaxLength(50)]
        public string BtnText { get; set; }
        [MaxLength(150)]
        public string BtnUrl { get; set; }
        [MaxLength(100)]
        public string ImageName { get; set; }

    }
}
