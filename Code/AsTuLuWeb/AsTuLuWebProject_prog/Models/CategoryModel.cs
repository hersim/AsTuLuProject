using System.Collections.Generic;
using AsTuLuWebProject_prog.Database;

namespace AsTuLuWebProject_prog.Models
{
    public class CategoryModel
    {
        public CategoryModel(Category category)
        {
            throw new System.NotImplementedException();
        }

        public int CategoryID { get; set; }
        public string CategoryName { get; set; }
        public int TimesCategoryConsulted { get; set; }
        public System.DateTime DateAdded { get; set; }

        public virtual ICollection<BookModel> Book { get; set; }
        public virtual ICollection<SubCategoryModel> SubCategory { get; set; }
    }
}
