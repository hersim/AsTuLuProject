using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Diagnostics;
using System.Linq;
using AstuluProject.Models.Database;
using AstuluProject.Models.Interfaces;

namespace AstuluProject.Models.Interfaces.DAL
{
    public class CategoryRepository : ICategoryRepository, IDisposable
    {
        private AsTuLusEntities Context;

        private bool Disposed;

        public CategoryRepository(AsTuLusEntities context)
        {
            Context = context;
        }

        public List<Category> ListCategories()
        {
            return Context.Category.ToList();
        }

        public Category GetCategoryByID(int categoryID)
        {
            return Context.Category.Find(categoryID);
        }

        public Category GetCategoryByNameAndSubtype(string categoryName, string subType)
        {
            List<Category> Category = Context.Category.Where(_item => _item.CategoryName == categoryName).ToList();

            if (Category.Count == 0)
            {
                return null;
            }

            if (!String.IsNullOrWhiteSpace(subType))
            {
                return Category.First();
                //return Category.FirstOrDefault(_item => _item.s.Any(_sub => _sub.SubCategoryName.Contains(subType)));    
            }
            else
            {
                return Category.FirstOrDefault(_item => _item.CategoryName == categoryName);
            }
        }

        public void AddCategory(Category category)
        {
            Context.Category.Add(category);

            Context.Entry(category).State = System.Data.EntityState.Added;
        }

        public void DeleteCategory(int categoryID)
        {
            Category categoryToDelete = Context.Category.Find(categoryID);

            Context.Category.Remove(categoryToDelete);

            Context.Entry(categoryToDelete).State = System.Data.EntityState.Deleted;
        }

        public void UpdateCategory(Category category)
        {
            Context.Entry(category).State = System.Data.EntityState.Modified;
        }

        public void Save()
        {
            try
            {
                Context.SaveChanges();
            }
            catch (DbEntityValidationException dbEx)
            {
                foreach (var dbValidationError in dbEx.EntityValidationErrors.
                    SelectMany(dbEntityValidationResult => dbEntityValidationResult.ValidationErrors))
                {
                    Trace.TraceInformation("Property: {0} Error: {1}", dbValidationError.PropertyName, dbValidationError.ErrorMessage);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!this.Disposed)
            {
                if (disposing)
                {
                    Context.Dispose();
                }
            }
            this.Disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}