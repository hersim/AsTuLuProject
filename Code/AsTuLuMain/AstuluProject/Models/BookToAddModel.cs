using System.Collections.Generic;

namespace AstuluProject.Models
{
    public class BookToAddModel
    {
        public string Name { get; set; }

        public string Author1 { get; set; }

        public string Author2 { get; set; }

        public string Author3 { get; set; }

        public string CollectionTag { get; set; }

        public string SerieTag { get; set; }

        public string Number { get; set; }

        public string Type { get; set; }

        public string Pages { get; set; }

        public string Score { get; set; }

        public string EditorName { get; set; }

        public string Language { get; set; }

        public string CategoryName { get; set; }

        public string SubCategoryName { get; set; }

        public string Translated { get; set; }

        public string Year { get; set; }

        public string PageNumber { get; set; }

        public List<AuthorModel> ListAuthors { get; set; }
    }
}