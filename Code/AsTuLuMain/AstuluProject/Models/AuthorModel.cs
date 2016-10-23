using System;
using System.Collections.Generic;

namespace AstuluProject.Models
{
    public class AuthorModel
    {
        public int AuthorID { get; set; }
        public string Name { get; set; }
        public int BookID { get; set; }
        public DateTime DateAdded { get; set; }
        public int Score { get; set; }

        public List<BookModel> ListBooks { get; set; }
    }
}