using AutoMapper;
using FamilyExperienceApp.Core.Entities;
using FamilyExperienceApp.Service.Dtos.Category;
using FamilyExperienceApp.Service.Dtos.Color;
using FamilyExperienceApp.Service.Dtos.Product;
using FamilyExperienceApp.Service.Dtos.Slider;
using FamilyExperienceApp.Service.Dtos.Tag;
using Microsoft.AspNetCore.Http;
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
        public MappingProfile(IHttpContextAccessor _httpContextAccessor)
        {
            var baseUrl = new UriBuilder(_httpContextAccessor.HttpContext.Request.Scheme, _httpContextAccessor.HttpContext.Request.Host.Host, _httpContextAccessor.HttpContext.Request.Host.Port ?? -1);

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

            CreateMap<SliderPostDto, Slider>();
            CreateMap<Slider, SliderGetDto>()
                .ForMember(d => d.ImageUrl, s => s.MapFrom(m => baseUrl + "uploads/sliders/" + m.ImageName));

            CreateMap<Slider, SliderGetAllDto>()
                .ForMember(d => d.ImageUrl, s => s.MapFrom(m => string.IsNullOrWhiteSpace(m.ImageName) ? null : (baseUrl + "uploads/sliders/" + m.ImageName)));

            CreateMap<Slider, SliderGetPaginatedListItemDto>();

            CreateMap<ProductPostDto, Product>();
            CreateMap<Product, ProductGetPaginatedListItemDto>();
        }
    }
}
