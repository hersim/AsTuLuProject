using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using AsTuLuWebProject_prog.Database;
using AsTuLuWebProject_prog.Repositories;

namespace AsTuLuWebProject_prog.DAL
{
    public class CategoryRepository : ICategoryRepository
    {
        public List<Category> ListCategories()
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                return context.Category.ToList();    
            }
            
        }

        public Category GetCategoryByID(int categoryID)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                return context.Category.Find(categoryID);    
            }
        }

        public Category GetCategoryByNameAndSubtype(string categoryName, string subType)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                List<Category> Category = context.Category.Where(item => item.CategoryName == categoryName).ToList();

                if (Category.Count == 0)
                {
                    return null;
                }

                return !String.IsNullOrWhiteSpace(subType) ? Category.First() : Category.FirstOrDefault(item => item.CategoryName == categoryName);
            }
            
        }

        public void AddCategory(Category category)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                context.Category.Add(category);

                context.Entry(category).State = EntityState.Added;

                context.SaveChanges();
            }
            
        }

        public void DeleteCategory(int categoryID)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                Category categoryToDelete = context.Category.Find(categoryID);

                context.Category.Remove(categoryToDelete);

                context.Entry(categoryToDelete).State = EntityState.Deleted;

                context.SaveChanges();
            }
            
        }

        public void UpdateCategory(Category category)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                context.Entry(category).State = EntityState.Modified;

                context.SaveChanges();
            }
            
        }

    }
}