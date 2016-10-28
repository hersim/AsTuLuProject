namespace AsTuLuWebProject_prog.Models
{
    public class SubCategoryModel
    {
        public int SubCategoryID { get; set; }
        public string SubCategoryName { get; set; }
        public int CategoryID { get; set; }
        public int TimesSubCatConsulted { get; set; }
        public System.DateTime DateAdded { get; set; }

        public virtual CategoryModel Category { get; set; }
    }
}
