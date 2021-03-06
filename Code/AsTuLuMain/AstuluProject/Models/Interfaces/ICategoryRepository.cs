﻿using System;
using System.Collections.Generic;
using AstuluProject.Models.Database;

namespace AstuluProject.Models.Interfaces
{
    public interface ICategoryRepository : IDisposable
    {
        List<Category> ListCategories();

        Category GetCategoryByID(int categoryID);

        Category GetCategoryByNameAndSubtype(string categoryName, string subType);

        void AddCategory(Category category);

        void DeleteCategory(int categoryID);

        void UpdateCategory(Category category);

        void Save();
    }
}