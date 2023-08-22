using AutoMapper;
using FamilyExperienceApp.Core.Entities;
using FamilyExperienceApp.Service.Dtos.Category;
using FamilyExperienceApp.Service.Dtos.Color;
using FamilyExperienceApp.Service.Dtos.Product;
using FamilyExperienceApp.Service.Dtos.Tag;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Profiles
{
    public class MappingProfile:Profile
    {
        public MappingProfile()
        {
            CreateMap<CategoryPostDto, Category>();
            CreateMap<Category, CategoryPostDto>();
            CreateMap<Category, CategoryInProductGetDto>();
            CreateMap<Category, CategoryGetAllDto>();
            CreateMap<Category, CategoryGetPaginatedListItemDto>();

            CreateMap<ColorPostDto, Color>();
            CreateMap<Color, ColorPostDto>();
            CreateMap<Color, ColorGetAllDto>();
            CreateMap<Color, ColorGetPaginatedListItemDto>();


            CreateMap<TagPostDto, Tag>();
            CreateMap<Tag, TagPostDto>();
            CreateMap<Tag, TagGetAllDto>();
            CreateMap<Tag, TagGetPaginatedListItemDto>();

        }
    }
}
