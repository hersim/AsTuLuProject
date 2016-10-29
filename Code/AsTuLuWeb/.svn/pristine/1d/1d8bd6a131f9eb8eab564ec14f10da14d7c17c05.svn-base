using System;
using AsTuLuWebProject.Database;

namespace AsTuLuWebProject.Models.Interfaces
{
    public class CategoryModel
    {
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public int TimesCategoryConsulted { get; set; }
        public DateTime DateAdded { get; set; }

        public CategoryModel()
        {
            
        }

        public CategoryModel(Category dataCat)
        {
            CategoryId = dataCat.CategoryID;
            CategoryName = dataCat.CategoryName;
            TimesCategoryConsulted = dataCat.TimesCategoryConsulted;
            DateAdded = dataCat.DateAdded;
        }
    }
}