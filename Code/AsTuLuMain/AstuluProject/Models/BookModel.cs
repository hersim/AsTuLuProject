using System;
using System.Collections.Generic;

namespace AstuluProject.Models
{
    public class BookModel
    {
        public string Name { get; set; }

        public string Author1 { get; set; }

        public string Author2 { get; set; }

        public string Author3 { get; set; }

        public string Collection { get; set; }

        public string Serie { get; set; }

        public int? Number { get; set; }

        public int Score { get; set; }

        public string EditorName { get; set; }

        public string Language { get; set; }

        public string CategoryName { get; set; }

        public string SubCategoryName { get; set; }

        public bool? IsTranslated { get; set; }

        public string Year { get; set; }

        public int PageNumber { get; set; }

        public int TimesSeen { get; set; }

        public int UserId { get; set; }

        public string UserName { get; set; }

        public DateTime DateAdded { get; set; }

        public DateTime? DatePublished { get; set; }
        
    }
}