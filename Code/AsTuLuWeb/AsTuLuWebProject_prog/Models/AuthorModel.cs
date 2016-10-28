using System;
using System.Collections.Generic;
using System.Linq;
using AsTuLuWebProject_prog.Database;

namespace AsTuLuWebProject_prog.Models
{
    public class AuthorModel
    {
        public AuthorModel(Author objDataAuthor)
        {
            AuthorID = objDataAuthor.AuthorID;
            Name = objDataAuthor.Name;
            DateAdded = objDataAuthor.DateAdded;
            Score = objDataAuthor.Score;
            TimesConsulted = objDataAuthor.TimesConsulted;
            LastTimeChecked = objDataAuthor.LastTimeChecked;

            if (objDataAuthor.AuthorByBook.Any())
            {
                AuthorByBook = objDataAuthor.AuthorByBook.Select(x => new AuthorByBookModel(x)) as ICollection<AuthorByBookModel>;
            }
        }

        public int AuthorID { get; set; }
        public string Name { get; set; }
        public System.DateTime DateAdded { get; set; }
        public int Score { get; set; }
        public int TimesConsulted { get; set; }
        public DateTime? LastTimeChecked { get; set; }

        public virtual ICollection<AuthorByBookModel> AuthorByBook { get; set; }
    }
}
