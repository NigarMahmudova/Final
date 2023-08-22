using FamilyExperienceApi.Data;
using FamilyExperienceApp.Api.Middlewares;
using FamilyExperienceApp.Service.Exceptions;
using FamilyExperienceApp.Service.Profiles;
using FluentValidation.AspNetCore;
using FluentValidation;
using MicroElements.Swashbuckle.FluentValidation.AspNetCore;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.OpenApi.Models;
using FamilyExperienceApp.Service.Dtos.Category;
using FamilyExperienceApp.Core.Repositories;
using FamilyExperienceApi.Data.Repositories;
using FamilyExperienceApp.Service.Interfaces;
using FamilyExperienceApp.Service.Implementations;
using FamilyExperienceApp.Core.Entities;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllers().ConfigureApiBehaviorOptions(options =>
{
    options.InvalidModelStateResponseFactory = context =>
    {
        var errors = context.ModelState.Where(x => x.Value.Errors.Count() > 0)
        .Select(x => new RestExceptionErrorItem(x.Key, x.Value.Errors.First().ErrorMessage)).ToList();

        return new BadRequestObjectResult(new { message = (string)null, errors = errors });
    };
});

builder.Services.AddIdentity<AppUser, IdentityRole>(opt =>
{
    opt.Password.RequireNonAlphanumeric = false;
    opt.Password.RequiredLength = 8;
}).AddDefaultTokenProviders().AddEntityFrameworkStores<FamExpDBContext>();

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();


builder.Services.AddSwaggerGen(c =>
{
    c.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
    {
        In = ParameterLocation.Header,
        Description = "Please enter token",
        Name = "Authorization",
        Type = SecuritySchemeType.Http,
        BearerFormat = "JWT",
        Scheme = "bearer"
    });
    c.AddSecurityRequirement(new OpenApiSecurityRequirement
    {
        {
            new OpenApiSecurityScheme
            {
                Reference = new OpenApiReference
                {
                    Type=ReferenceType.SecurityScheme,
                    Id="Bearer"
                }
            },
            new string[]{}
        }
    });
});

builder.Services.AddFluentValidationRulesToSwagger();


builder.Services.AddDbContext<FamExpDBContext>(opt =>
{
    opt.UseSqlServer(builder.Configuration.GetConnectionString("Default"));
});


builder.Services.AddScoped<ICategoryRepository, CategoryRepository>();
builder.Services.AddScoped<IColorRepository, ColorRepository>();
builder.Services.AddScoped<ITagRepository, TagRepository>();
builder.Services.AddScoped<ISliderRepository, SliderRepository>();

builder.Services.AddScoped<ICategoryService, CategoryService>();
builder.Services.AddScoped<IColorService, ColorService>();
builder.Services.AddScoped<ITagService, TagService>();
builder.Services.AddScoped<ISliderService, SliderService>();

builder.Services.AddFluentValidationAutoValidation();
builder.Services.AddValidatorsFromAssemblyContaining<CategoryPostDtoValidator>();
builder.Services.AddAutoMapper(typeof(MappingProfile));

builder.Services.AddAuthentication(opt =>
{
    opt.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
    opt.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    opt.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
}).AddJwtBearer(opt =>
{
    opt.TokenValidationParameters = new Microsoft.IdentityModel.Tokens.TokenValidationParameters
    {
        ValidAudience = builder.Configuration["JWT:Audience"],
        ValidIssuer = builder.Configuration.GetSection("JWT:Issuer").Value,
        IssuerSigningKey = new SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes(builder.Configuration.GetSection("JWT:Secret").Value))
    };
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthentication();

app.UseAuthorization();

app.MapControllers();

app.UseMiddleware<ExceptionHandlingMiddleware>();

app.Run();
