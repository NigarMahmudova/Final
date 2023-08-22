using FluentValidation;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Dtos.Slider
{
    public class SliderPostDto
    {
        public int Order { get; set; }
        public string Title { get; set; }
        public string Desc { get; set; }
        public string BtnText { get; set; }
        public string BtnUrl { get; set; }
        public IFormFile ImageFile { get; set; }
    }

    public class SliderPostDtoValidator : AbstractValidator<SliderPostDto> 
    {
        public SliderPostDtoValidator()
        {
            RuleFor(x => x.Title).MaximumLength(50);
            RuleFor(x => x.Desc).MaximumLength(150);
            RuleFor(x => x.BtnText).MaximumLength(50);
            RuleFor(x => x.BtnUrl).MaximumLength(150);

            RuleFor(x => x.ImageFile).NotNull();

            RuleFor(x => x).Custom((x, context) =>
            {
                if (x.ImageFile != null)
                {
                    if (x.ImageFile.Length > 2 * 1024 * 1024)
                        context.AddFailure("ImageFile", "Image file must be less or equal than 2MB");

                    if (x.ImageFile.ContentType != "image/png" && x.ImageFile.ContentType != "image/jpeg" && x.ImageFile.ContentType != "image/jpg")
                        context.AddFailure("ImageFile", "Image file must be png,jpg or jpeg");
                }

            });
        }
    }

}
