using AutoMapper;
using FamilyExperienceApi.Data.Repositories;
using FamilyExperienceApp.Core.Entities;
using FamilyExperienceApp.Core.Repositories;
using FamilyExperienceApp.Service.Dtos.Color;
using FamilyExperienceApp.Service.Dtos.Common;
using FamilyExperienceApp.Service.Dtos.Tag;
using FamilyExperienceApp.Service.Exceptions;
using FamilyExperienceApp.Service.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Implementations
{
    public class TagService : ITagService
    {
        private readonly ITagRepository _tagRepository;
        private readonly IMapper _mapper;

        public TagService(ITagRepository tagRepository, IMapper mapper)
        {
            _tagRepository = tagRepository;
            _mapper = mapper;
        }


        public void Delete(int id)
        {
            var entity = _tagRepository.Get(x => x.Id == id);

            if (entity == null)
            {
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Tag not found by id: {id}");
            }

            _tagRepository.Remove(entity);
            _tagRepository.Commit();
        }

        public List<TagGetAllDto> GetAll()
        {
            var dtos = _tagRepository.GetQueryable(x => true).ToList();

            return _mapper.Map<List<TagGetAllDto>>(dtos);
        }

        public PaginatedListDto<TagGetPaginatedListItemDto> GetAllPaginated(int page)
        {
            var query = _tagRepository.GetQueryable(x => true, "Products");
            var entities = query.Skip((page - 1) * 4).Take(4).ToList();
            var items = _mapper.Map<List<TagGetPaginatedListItemDto>>(entities);
            return new PaginatedListDto<TagGetPaginatedListItemDto>(items, page, 4, query.Count());
        }

        public TagGetDto GetById(int id)
        {
            var entity = _tagRepository.Get(x => x.Id == id);

            if (entity == null)
            {
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Tag not found by id: {id}");
            }

            return _mapper.Map<TagGetDto>(entity);
        }

        public CreatedResultDto Post(TagPostDto postDto)
        {
            if (_tagRepository.IsExist(x => x.Name == postDto.Name))
            {
                throw new RestException(System.Net.HttpStatusCode.BadRequest, "Name", "Name is already taken");
            }

            var entity = _mapper.Map<Tag>(postDto);

            _tagRepository.Add(entity);
            _tagRepository.Commit();

            return new CreatedResultDto { Id = entity.Id };
        }

        public void Put(int id, TagPutDto putDto)
        {
            var entity = _tagRepository.Get(x => x.Id == id);

            if (entity == null)
            {
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Tag not found by id: {id}");
            }

            if (entity.Name != putDto.Name && _tagRepository.IsExist(x => x.Name == putDto.Name))
            {
                throw new RestException(System.Net.HttpStatusCode.BadRequest, "Name", "Name is already taken");
            }

            entity.Name = putDto.Name;
            _tagRepository.Commit();
        }
    }
}
