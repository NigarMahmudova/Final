using FamilyExperienceApp.Service.Dtos.Color;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Dtos.Tag
{
    public class TagPutDto
    {
        public string Name { get; set; }

    }

    public class TagPutDtoValidator : AbstractValidator<TagPutDto>
    {
        public TagPutDtoValidator()
        {
            RuleFor(x => x.Name).NotEmpty().MaximumLength(20);
        }
    }
}
