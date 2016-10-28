using System.Collections.Generic;
using AsTuLuWebProject_prog.Database;

namespace AsTuLuWebProject_prog.Repositories
{
    public interface ICategoryRepository
    {
        List<Category> ListCategories();

        Category GetCategoryByID(int categoryID);

        Category GetCategoryByNameAndSubtype(string categoryName, string subType);

        void AddCategory(Category category);

        void DeleteCategory(int categoryID);

        void UpdateCategory(Category category);
        
    }
}