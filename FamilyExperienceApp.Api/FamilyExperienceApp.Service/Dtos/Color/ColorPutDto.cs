using FamilyExperienceApp.Service.Dtos.Category;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Dtos.Color
{
    public class ColorPutDto
    {
        public string Name { get; set; }
    }

    public class ColorPutDtoValidator : AbstractValidator<ColorPutDto>
    {
        public ColorPutDtoValidator()
        {
            RuleFor(x => x.Name).NotEmpty().MaximumLength(25);
        }
    }
}
