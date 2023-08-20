using AutoMapper;
using FamilyExperienceApi.Data.Repositories;
using FamilyExperienceApp.Core.Entities;
using FamilyExperienceApp.Core.Repositories;
using FamilyExperienceApp.Service.Dtos.Category;
using FamilyExperienceApp.Service.Dtos.Color;
using FamilyExperienceApp.Service.Dtos.Common;
using FamilyExperienceApp.Service.Exceptions;
using FamilyExperienceApp.Service.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Implementations
{
    public class ColorService : IColorService
    {
        private readonly IColorRepository _colorRepository;
        private readonly IMapper _mapper;

        public ColorService(IColorRepository colorRepository, IMapper mapper)
        {
            _colorRepository = colorRepository;
            _mapper = mapper;
        }



        public void Delete(int id)
        {
            var entity = _colorRepository.Get(x => x.Id == id);

            if (entity == null)
            {
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Color not found by id: {id}");
            }

            _colorRepository.Remove(entity);
            _colorRepository.Commit();
        }

        public List<ColorGetAllDto> GetAll()
        {
            var dtos = _colorRepository.GetQueryable(x => true).ToList();

            return _mapper.Map<List<ColorGetAllDto>>(dtos);
        }

        public ColorGetDto GetById(int id)
        {
            var entity = _colorRepository.Get(x => x.Id == id);

            if (entity == null)
            {
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Color not found by id: {id}");
            }

            return _mapper.Map<ColorGetDto>(entity);
        }

        public CreatedResultDto Post(ColorPostDto postDto)
        {
            if (_colorRepository.IsExist(x => x.Name == postDto.Name))
            {
                throw new RestException(System.Net.HttpStatusCode.BadRequest, "Name", "Name is already taken");
            }

            var entity = _mapper.Map<Color>(postDto);

            _colorRepository.Add(entity);
            _colorRepository.Commit();

            return new CreatedResultDto { Id = entity.Id };
        }

        public void Put(int id, ColorPutDto putDto)
        {
            var entity = _colorRepository.Get(x => x.Id == id);

            if (entity == null)
            {
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Color not found by id: {id}");
            }

            if (entity.Name != putDto.Name && _colorRepository.IsExist(x => x.Name == putDto.Name))
            {
                throw new RestException(System.Net.HttpStatusCode.BadRequest, "Name", "Name is already taken");
            }

            entity.Name = putDto.Name;
            _colorRepository.Commit();
        }
    }
}
