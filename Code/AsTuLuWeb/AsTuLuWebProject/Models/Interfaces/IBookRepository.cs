using System.Collections.Generic;
using AsTuLuWebProject.Database;
using AsTuLuWebProject.Models.ViewModels;
using AsTuLuWebProject.Utilities;

namespace AsTuLuWebProject.Models.Interfaces
{
    public interface IBookRepository 
    {
        List<BookDisplay> GetListOfBooks(int pageNumber, string firstOption, string secondOption, string thirdOption, int? userID);

        List<BookDisplay> ListRandomBooks(List<BookDisplay> listBooks, int pageNumber);

        List<AuthorModel> ListAuthorsByBook(int bookId);
            
        BookModel GetBookById(int bookId);

        BookStatus GetRelationshipForBook(UserAccount userToShow, BookModel bookToShow);

        bool CheckIfBookPresent(int bookID);

        UserActionResult UpdateBookStatus(int bookID, string buttonId, string userName);
    }
}