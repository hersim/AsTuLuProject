using AsTuLuWebProject_prog.Database;

namespace AsTuLuWebProject_prog.Models
{
    public class AuthorByBookModel
    {
        public AuthorByBookModel(AuthorByBook authorByBook)
        {
            AuthorByBookID = authorByBook.AuthorByBookID;
            BookID = authorByBook.BookID;
            AuthorID = authorByBook.AuthorID;
        }

        public int AuthorByBookID { get; set; }
        public int BookID { get; set; }
        public int AuthorID { get; set; }

        public AuthorModel Author { get; set; }
        public BookModel Book { get; set; }
    }
}
