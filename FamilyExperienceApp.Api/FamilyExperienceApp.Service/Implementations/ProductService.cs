using AutoMapper;
using FamilyExperienceApp.Core.Entities;
using FamilyExperienceApp.Core.Repositories;
using FamilyExperienceApp.Service.Dtos.Common;
using FamilyExperienceApp.Service.Dtos.Product;
using FamilyExperienceApp.Service.Exceptions;
using FamilyExperienceApp.Service.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Service.Implementations
{
    public class ProductService : IProductService
    {
        private readonly IProductRepository _productRepository;
        private readonly ICategoryRepository _categoryRepository;
        private readonly IMapper _mapper;
        private string _rootPath;

        public ProductService(IProductRepository productRepository, ICategoryRepository categoryRepository, IMapper mapper)
        {
            _productRepository = productRepository;
            _categoryRepository = categoryRepository;
            _mapper = mapper;
            _rootPath = Directory.GetCurrentDirectory() + "/wwwroot";
        }

        public void Delete(int id)
        {
            var entity = _productRepository.Get(x => x.Id == id);

            if (entity == null)
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Product not found by id: {id}");

            _productRepository.Remove(entity);
            _productRepository.Commit();
        }

        public List<ProductGetAllDto> GetAll()
        {
            var entities = _productRepository.GetQueryable(x => true, "Category").ToList();

            return _mapper.Map<List<ProductGetAllDto>>(entities);
        }

        public PaginatedListDto<ProductGetPaginatedListItemDto> GetAllPaginated(int page)
        {
            var query = _productRepository.GetQueryable(x => true, "Category");
            var entities = query.Skip((page - 1) * 4).Take(4).ToList();
            var items = _mapper.Map<List<ProductGetPaginatedListItemDto>>(entities);
            return new PaginatedListDto<ProductGetPaginatedListItemDto>(items, page, 4, query.Count());
        }

        public ProductGetDto GetById(int id)
        {
            throw new NotImplementedException();
        }

        public CreatedResultDto Post(ProductPostDto postDto)
        {
            if (!_categoryRepository.IsExist(x => x.Id == postDto.CategoryId))
                throw new RestException(System.Net.HttpStatusCode.BadRequest, "CategoryId", $"Category not found by id:{postDto.CategoryId}");

            if (!_productRepository.IsExist(x => x.Name == postDto.Name))
                throw new RestException(System.Net.HttpStatusCode.BadRequest, "Name", "Name is already taken");

            var entity = _mapper.Map<Product>(postDto);

            _productRepository.Add(entity);
            _productRepository.Commit();

            return new CreatedResultDto { Id = entity.Id };
        }

        public void Put(int id, ProductPutDto putDto)
        {
            throw new NotImplementedException();
        }
    }
}
