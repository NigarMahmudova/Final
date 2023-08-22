using AutoMapper;
using FamilyExperienceApp.Core.Entities;
using FamilyExperienceApp.Core.Repositories;
using FamilyExperienceApp.Service.Dtos.Common;
using FamilyExperienceApp.Service.Dtos.Product;
using FamilyExperienceApp.Service.Dtos.Slider;
using FamilyExperienceApp.Service.Exceptions;
using FamilyExperienceApp.Service.Helpers;
using FamilyExperienceApp.Service.Interfaces;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Implementations
{
    public class SliderService : ISliderService
    {
        private readonly ISliderRepository _sliderRepository;
        private readonly IMapper _mapper;
        private string _rootPath;

        public SliderService(ISliderRepository sliderRepository, IMapper mapper)
        {
            _sliderRepository = sliderRepository;
            _mapper = mapper;
            _rootPath = Directory.GetCurrentDirectory() + "/wwwroot";
        }


        public void Delete(int id)
        {
            var entity = _sliderRepository.Get(x => x.Id == id);

            if (entity == null)
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Slider not found by id: {id}");

            _sliderRepository.Remove(entity);
            _sliderRepository.Commit();
        }

        public List<SliderGetAllDto> GetAll()
        {
            var entities = _sliderRepository.GetQueryable(x => true).ToList();

            return _mapper.Map<List<SliderGetAllDto>>(entities);
        }

        public PaginatedListDto<SliderGetPaginatedListItemDto> GetAllPaginated(int page)
        {
            var query = _sliderRepository.GetQueryable(x => true, "Brand");
            var entities = query.Skip((page - 1) * 4).Take(4).ToList();
            var items = _mapper.Map<List<SliderGetPaginatedListItemDto>>(entities);
            return new PaginatedListDto<SliderGetPaginatedListItemDto>(items, page, 4, query.Count());
        }

        public SliderGetDto GetById(int id)
        {
            var entity = _sliderRepository.Get(x => x.Id == id);

            if (entity == null)
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Slider not found by id: {id}");

            return _mapper.Map<SliderGetDto>(entity);
        }

        public CreatedResultDto Post(SliderPostDto postDto)
        {
            if (_sliderRepository.IsExist(x => x.Title == postDto.Title))
                throw new RestException(System.Net.HttpStatusCode.BadRequest, "Title", $"Title already taken");

            var entity = _mapper.Map<Slider>(postDto);

            entity.ImageName = FileManager.Save(postDto.ImageFile, _rootPath, "uploads/sliders");

            _sliderRepository.Add(entity);
            _sliderRepository.Commit();

            return new CreatedResultDto { Id = entity.Id };
        }

        public void Put(int id, SliderPutDto putDto)
        {
            var entity = _sliderRepository.Get(x => x.Id == id);

            if (entity == null)
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Slider not found by id: {id}");

            if (entity.Title != putDto.Title && _sliderRepository.IsExist(x => x.Title == putDto.Title))
                throw new RestException(System.Net.HttpStatusCode.BadRequest, "Title", "Title already taken");

            entity.Title = putDto.Title;
            entity.Desc = putDto.Desc;
            entity.BtnText = putDto.BtnText;
            entity.BtnUrl = putDto.BtnUrl;
            entity.Order = putDto.Order;
            string existImageName = null;

            if (putDto.ImageFile != null)
            {
                existImageName = entity.ImageName;
                entity.ImageName = FileManager.Save(putDto.ImageFile, _rootPath, "uploads/sliders");
            }

            _sliderRepository.Commit();

            if (existImageName != null)
                FileManager.Delete(_rootPath, "uploads/sliders", existImageName);
        }
    }
}
