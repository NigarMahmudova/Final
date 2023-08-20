using AutoMapper;
using FamilyExperienceApp.Core.Entities;
using FamilyExperienceApp.Core.Repositories;
using FamilyExperienceApp.Service.Dtos.Category;
using FamilyExperienceApp.Service.Dtos.Common;
using FamilyExperienceApp.Service.Exceptions;
using FamilyExperienceApp.Service.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Implementations
{
    public class CategoryService : ICategoryService
    {
        private readonly ICategoryRepository _categoryRepository;
        private readonly IMapper _mapper;

        public CategoryService(ICategoryRepository categoryRepository, IMapper mapper)
        {
            _categoryRepository = categoryRepository;
            _mapper = mapper;
        }


        public void Delete(int id)
        {
            var entity = _categoryRepository.Get(x => x.Id == id);

            if (entity == null)
            {
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Category not found by id: {id}");
            }

            _categoryRepository.Remove(entity);
            _categoryRepository.Commit();
        }

        public List<CategoryGetAllDto> GetAll()
        {
            var dtos = _categoryRepository.GetQueryable(x => true).ToList();

            return _mapper.Map<List<CategoryGetAllDto>>(dtos);
        }

        public CategoryGetDto GetById(int id)
        {
            var entity = _categoryRepository.Get(x => x.Id == id, "Products");

            if (entity == null)
            {
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Category not found by id: {id}");
            }

            return _mapper.Map<CategoryGetDto>(entity);
        }

        public CreatedResultDto Post(CategoryPostDto postDto)
        {
            if (_categoryRepository.IsExist(x => x.Name == postDto.Name))
            {
                throw new RestException(System.Net.HttpStatusCode.BadRequest, "Name", "Name is already taken");
            }

            var entity = _mapper.Map<Category>(postDto);

            _categoryRepository.Add(entity);
            _categoryRepository.Commit();

            return new CreatedResultDto { Id = entity.Id };
        }

        public void Put(int id, CategoryPutDto putDto)
        {
            var entity = _categoryRepository.Get(x => x.Id == id);

            if (entity == null)
            {
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Category not found by id: {id}");
            }

            if (entity.Name != putDto.Name && _categoryRepository.IsExist(x => x.Name == putDto.Name))
            {
                throw new RestException(System.Net.HttpStatusCode.BadRequest, "Name", "Name is already taken");
            }

            entity.Name = putDto.Name;
            _categoryRepository.Commit();
        }
    }
}
