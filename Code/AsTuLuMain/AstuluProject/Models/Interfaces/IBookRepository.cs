using System;
using System.Collections.Generic;
using AstuluProject.Models.Database;

namespace AstuluProject.Models.Interfaces
{
    public interface IBookRepository : IDisposable 
    {
        List<Book> ListBook();

        List<Book> ListHighestRatingBook();

        List<Book> ListTwentyLatestBook(int pageNumber, string firstOption, string secondOption);

        List<Book> ListRandomBook(int pageNumber);

        Book GetBookById(int bookId, bool hasDisposed);

        BookByUser GetRelationshipForBook(UserAccount userToShow, Book bookToShow);

        bool CheckIfBookPresent(BookToAddModel bookToCheck);

        bool CheckIfBookPresent(Book bookToCheck);

        bool HasDisposed();

        void AddBook(Book book);

        void AddBook(BookToAddModel bookModel);

        void DeleteBook(int bookID);

        void UpdateBook(Book updatedBook);

        void Save();
        
    }
}