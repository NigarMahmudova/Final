using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Dtos.Color
{
    public class ColorPostDto
    {
        public string Name { get; set; }
    }

    public class ColorPostDtoValidator : AbstractValidator<ColorPostDto>
    {
        public ColorPostDtoValidator()
        {
            RuleFor(x => x.Name).NotEmpty().MaximumLength(25);
        }
    }
}
