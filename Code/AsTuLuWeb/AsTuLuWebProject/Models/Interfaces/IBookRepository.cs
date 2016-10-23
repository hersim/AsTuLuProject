﻿using System.Collections.Generic;
using AsTuLuWebProject.Database;
using AsTuLuWebProject.Models.ViewModels;
using AsTuLuWebProject.Utilities;

namespace AsTuLuWebProject.Models.Interfaces
{
    public interface IBookRepository 
    {
        List<Book> ListBooks();

        List<Book> ListHighestRatingBooks();

        List<BookDisplay> GetListOfBooks(int pageNumber, string firstOption, string secondOption, string thirdOption, int? userID);

        List<BookDisplay> ListRandomBooks(List<BookDisplay> listBooks, int pageNumber);

        List<AuthorModel> ListAuthorsByBook(int bookId);
            
        Book GetBookById(int bookId);

        BookStatus GetRelationshipForBook(UserAccount userToShow, Book bookToShow);

        BookDisplay GetRelationshipForBookDisplay(UserAccount userToShow, Book bookToShow);

        bool CheckIfBookPresent(BookModel bookToCheck);

        bool CheckIfBookPresent(Book bookToCheck);

        UserActionResult UpdateBookStatus(int bookID, string buttonId, string userName);
    }
}