using System.Collections.Generic;
using System.Linq;
using AsTuLuWebProject_prog.Database;

namespace AsTuLuWebProject_prog.Models
{
    public class BookModel
    {
        public int BookID { get; set; }
        public string BookName { get; set; }
        public int? BookNumber { get; set; }
        public string BookCollection { get; set; }
        public string BookSerie { get; set; }
        public int BookLanguage { get; set; }
        public int PageCount { get; set; }
        public int? PublishedYear { get; set; }
        public System.DateTime DateAdded { get; set; }
        public int Score { get; set; }
        public int TimesConsulted { get; set; }
        public bool? IsTranslated { get; set; }
        public int BookStatus { get; set; }
        public int CategoryID { get; set; }
        public int? UserID { get; set; }

        public IEnumerable<AuthorByBookModel> AuthorByBook { get; set; }
        public IEnumerable<BookByEditorModel> BookByEditor { get; set; }
        public IEnumerable<BookByUserModel> BookByUser { get; set; }
        public CategoryModel Category { get; set; }
        public IEnumerable<ReviewModel> Review { get; set; }

        public BookModel()
        {
            
        }

        public BookModel(Book objDataBook)
        {
            BookID = objDataBook.BookID;
            BookName = objDataBook.BookName;
            BookNumber = objDataBook.BookNumber;
            BookCollection = objDataBook.BookCollection;
            BookSerie = objDataBook.BookSerie;
            BookLanguage = objDataBook.BookLanguage;
            PageCount = objDataBook.PageNumber;
            PublishedYear = objDataBook.PublishedYear;
            DateAdded = objDataBook.DateAdded;
            Score = objDataBook.Score;
            TimesConsulted = objDataBook.TimesConsulted;
            IsTranslated = objDataBook.IsTranslated;
            BookStatus = objDataBook.BookStatus;
            CategoryID = objDataBook.CategoryID;
            UserID = objDataBook.UserID;
            
            if (objDataBook.AuthorByBook.Any())
            {
                AuthorByBook = objDataBook.AuthorByBook.Select(x => new AuthorByBookModel(x));
            }

            if (objDataBook.BookByEditor.Any())
            {
                BookByEditor = objDataBook.BookByEditor.Select(x => new BookByEditorModel(x));
            }

            if (objDataBook.BookByUser.Any())
            {
                BookByUser = objDataBook.BookByUser.Select(x => new BookByUserModel(x));
            }

            Category = new CategoryModel(objDataBook.Category);

            if (objDataBook.Review.Any())
            {
                Review = objDataBook.Review.Select(x => new ReviewModel(x));
            }
        }

    }
}