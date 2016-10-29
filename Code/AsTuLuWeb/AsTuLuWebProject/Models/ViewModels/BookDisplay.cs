using System;
using System.Collections.Generic;
using System.Linq;
using AsTuLuWebProject.Database;

namespace AsTuLuWebProject.Models.ViewModels
{
    public class BookDisplay
    {
        #region BookProperties
        
        public int BookID { get; set; }
        public int? LikeState { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime? DateModified { get; set; }
        public string BookName { get; set; }
        public int? BookNumber { get; set; }
        public string BookCollection { get; set; }
        public string BookSerie { get; set; }
        public int BookLanguage { get; set; }
        public int PageNumber { get; set; }
        public int? PublishedYear { get; set; }
        public DateTime DateAdded { get; set; }
        public int Score { get; set; }
        public int TimesConsulted { get; set; }
        public bool? IsTranslated { get; set; }
        public int BookStatus { get; set; }
        public int ReviewCount { get; set; }
        public string BookCategory { get; set; }

        public List<string> ListAuthors { get; set; }
        public List<string> ListEditors { get; set; }
        public List<string> ListSubCats { get; set; }

        #endregion
        public int UserID { get; set; }
        
        public BookDisplay()
        {
            ListAuthors = new List<string>();
            ListEditors = new List<string>();
            ListSubCats = new List<string>();
        }

        public BookDisplay(Book databook)
        {
            BuildThisBook(databook);
        }

        public BookDisplay(BookByUser dataBook)
        {
            BuildThisBook(dataBook.Book);
        }

        private void BuildThisBook(Book databook)
        {
            ListAuthors = new List<string>();
            ListEditors = new List<string>();
            ListSubCats = new List<string>();

            BookID = databook.BookID;
            DateAdded = databook.DateAdded;
            BookName = databook.BookName;
            BookNumber = databook.BookNumber;
            BookCollection = databook.BookCollection;
            BookSerie = databook.BookSerie;
            BookLanguage = databook.BookLanguage;
            PageNumber = databook.PageNumber;
            PublishedYear = databook.PublishedYear;
            Score = databook.Score;
            TimesConsulted = databook.TimesConsulted;
            IsTranslated = databook.IsTranslated;
            BookStatus = databook.BookStatus;
            ReviewCount = databook.Review.Count;

            if (databook.Category != null)
            {
                BookCategory = databook.Category.CategoryName;

                if (databook.Category.SubCategory != null)
                {
                    ListSubCats = databook.Category.SubCategory.Select(x => x.SubCategoryName).ToList();
                }
            }

            if (databook.BookByEditor.Any())
            {
                foreach (BookByEditor bookByEditor in databook.BookByEditor)
                {
                    ListEditors.Add(bookByEditor.Editor.EditorName);
                }
            }

            if (databook.AuthorByBook.Any())
            {
                foreach (AuthorByBook authorByBook in databook.AuthorByBook)
                {
                    ListAuthors.Add(authorByBook.Author.Name);
                }
            }
            else
            {
                throw new Exception("Auteur manquant");
            }
        }
    }
}