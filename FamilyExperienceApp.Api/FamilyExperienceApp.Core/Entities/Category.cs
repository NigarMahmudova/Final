﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FamilyExperienceApp.Core.Entities
{
    public class Category:BaseEntity
    {
        public string Name { get; set; }

        public List<Product> Products { get; set; }
        public List<CategoryLanguage> CategoryLanguages { get; set; }
    }
}
