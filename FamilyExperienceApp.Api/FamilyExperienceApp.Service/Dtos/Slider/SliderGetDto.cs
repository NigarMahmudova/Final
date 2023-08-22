using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Dtos.Slider
{
    public class SliderGetDto
    {
        public int Order { get; set; }
        public string Title { get; set; }
        public string Desc { get; set; }
        public string BtnText { get; set; }
        public string BtnUrl { get; set; }
        public string ImageUrl { get; set; }
    }
}
