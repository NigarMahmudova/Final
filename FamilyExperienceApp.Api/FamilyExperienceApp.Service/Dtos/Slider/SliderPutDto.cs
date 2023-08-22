using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Dtos.Slider
{
    public class SliderPutDto
    {
        public int Order { get; set; }
        public string Title { get; set; }
        public string Desc { get; set; }
        public string BtnText { get; set; }
        public string BtnUrl { get; set; }
        public string ImageName { get; set; }
    }

    public class SliderPutDtoValidator : AbstractValidator<SliderPutDto>
    {
        public SliderPutDtoValidator()
        {
            RuleFor(x => x.Title).MaximumLength(50);
            RuleFor(x => x.Desc).MaximumLength(150);
            RuleFor(x => x.BtnText).MaximumLength(50);
            RuleFor(x => x.BtnUrl).MaximumLength(150);
            RuleFor(x => x.ImageName).MaximumLength(100);
        }
    }
}
