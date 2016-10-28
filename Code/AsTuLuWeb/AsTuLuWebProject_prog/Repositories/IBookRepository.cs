using System.Collections.Generic;
using AsTuLuWebProject.Utilities;
using AsTuLuWebProject.ViewModels;
using AsTuLuWebProject_prog.Database;
using AsTuLuWebProject_prog.Models;

namespace AsTuLuWebProject_prog.Repositories
{
    public interface IBookRepository 
    {
        List<BookModel> ListBooks();

        List<BookModel> ListHighestRatingBooks();

        List<BookDisplay> GetListOfBooks(int pageNumber, string firstOption, string secondOption, string thirdOption, int? userID);

        List<AuthorModel> ListAuthorsByBook(int bookId);

        BookModel GetBookById(int bookId);

        bool CheckIfBookPresent(BookModel bookToCheck);

        bool CheckIfBookPresent(Book bookToCheck);

        UserActionResult UpdateBookStatus(int bookID, string buttonId, string name);

        List<BookDisplay> ListRandomBooks(List<BookDisplay> pageNumber, int i);
    }
}