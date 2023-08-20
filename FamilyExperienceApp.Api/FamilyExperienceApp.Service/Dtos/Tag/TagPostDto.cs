using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Dtos.Tag
{
    public class TagPostDto
    {
        public string Name { get; set; }

    }

    public class TagPostDtoValidator : AbstractValidator<TagPostDto>
    {
        public TagPostDtoValidator()
        {
            RuleFor(x => x.Name).NotEmpty().MaximumLength(20);
        }
    }
}
