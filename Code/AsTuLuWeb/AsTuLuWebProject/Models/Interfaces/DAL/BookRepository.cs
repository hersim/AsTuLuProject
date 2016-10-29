﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using AsTuLuWebProject.Database;
using AsTuLuWebProject.Models.ViewModels;
using AsTuLuWebProject.Utilities;
using AsTuLuWebProject.Utilities.Enums;

namespace AsTuLuWebProject.Models.Interfaces.DAL
{
    public class BookRepository : IBookRepository
    {
        #region Properties

        private static readonly IEditorRepository EditorRepository = new EditorRepository();

        private static readonly ICategoryRepository CategoryRepository = new CategoryRepository();

        private static readonly IUserRepository UserRepository = new UserRepository();

        #endregion

        #region Public Methods
        
        public List<Book> ListBooks()
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                return context.Book.ToList();    
            }
            
        }

        public List<Book> ListHighestRatingBooks()
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                return context.Book.OrderBy(x => x.Score).ToList();
            }
        }

        public List<BookDisplay> GetListOfBooks(int pageNumber, string firstOption, string secondOption, string thirdOption, int? userId)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                int pageCount = pageNumber - 1;

                List<Book> listBook = new List<Book>();

                if (!String.IsNullOrEmpty(firstOption))
                {
                    switch (firstOption)
                    {
                        case "Category":
                            listBook = ListBooksByCategory(context, pageCount, firstOption, secondOption, thirdOption);
                            break;
                        case "Editor":
                            listBook = ListBooksByCategory(context, pageCount, firstOption, secondOption, thirdOption);
                            break;
                        case "Author":
                            listBook = ListBooksByAuthor(context, pageCount, firstOption, secondOption, thirdOption);
                            break;
                    }
                    
                }
                else
                {
                    IQueryable<Book> bookQuery = from b in context.Book
                                                 select b;

                    listBook = bookQuery.OrderByDescending(x => x.DateAdded).ThenByDescending(x => x.Score).Skip(pageCount * 60).Take(60).ToList();
                }

                switch (thirdOption)
                {
                    case "Low":
                        listBook = listBook.OrderBy(x => x.Score).ToList();
                        break;
                    case "High":
                        listBook = listBook.OrderByDescending(x => x.Score).ToList();
                        break;
                }

                List<BookDisplay> listBookToReturn = new List<BookDisplay>();

                if (userId != null)
                {
                    UserAccount account = UserRepository.GetUser((int)userId);

                    foreach (Book booking in listBook)
                    {
                        Book booking1 = booking;

                        IQueryable<BookByUser> bookRelationShip = from br in context.BookByUser
                                                                  where br.BookID == booking1.BookID
                                                                  where br.UserID == account.AccountID
                                                                  select br;

                        BookByUser bookRel;

                        if (!bookRelationShip.Any())
                        {
                            bookRel = new BookByUser
                            {
                                BookID = booking.BookID,
                                UserID = account.AccountID,
                                DateCreated = DateTime.Now,
                                DateModified = DateTime.Now,
                            };

                            context.BookByUser.Add(bookRel);
                        }
                        else
                        {
                            bookRel = bookRelationShip.First();
                        }

                        listBookToReturn.Add(new BookDisplay(bookRel));
                    }

                }
                else
                {
                    listBookToReturn.AddRange(listBook.Select(booking => new BookDisplay(booking)));
                }

                return listBookToReturn;
            }
            
        }

        private static List<Book> ListBooksByAuthor(AsTuLusEntities context, int pageCount, string firstOption,
                                                    string secondOption, string thirdOption)
        {
            List<Book> listBook = new List<Book>();

            IQueryable<Author> authors = from a in context.Author.OrderBy(x => x.Name)
                                         select a;

            List<Author> listAuthors = new List<Author>
                                {
                                    authors.First()
                                };

            int count = 0;

            Author authorModel = listAuthors.Last();

            while (listBook.Count < 60)
            {
                IQueryable<Book> bookByAuthor =
                    from a in context.Book.Where(
                                item => item.AuthorByBook.Any(x => x.AuthorID == authorModel.AuthorID))
                    select a;

                List<Book> fetch;

                switch (secondOption)
                {
                    default:
                        switch (thirdOption)
                        {
                            default:
                                fetch = bookByAuthor.OrderBy(x => x.BookID).Skip(pageCount * 60).Take(60).ToList();
                                break;
                            case "High":
                                fetch = bookByAuthor.OrderBy(x => x.BookID).ThenByDescending(x => x.Score).Skip(pageCount * 60).Take(60).ToList();
                                break;
                            case "Low":
                                fetch = bookByAuthor.OrderBy(x => x.BookID).ThenBy(x => x.Score).Skip(pageCount * 60).Take(60).ToList();
                                break;
                        }

                        break;
                    case "New":
                        switch (thirdOption)
                        {
                            default:
                                fetch = bookByAuthor.OrderByDescending(x => x.DateAdded).Skip(pageCount * 60).Take(60).ToList();
                                break;
                            case "High":
                                fetch = bookByAuthor.OrderByDescending(x => x.DateAdded).ThenByDescending(x => x.Score).Skip(pageCount * 60).Take(60).ToList();
                                break;
                            case "Low":
                                fetch = bookByAuthor.OrderByDescending(x => x.DateAdded).ThenBy(x => x.Score).Skip(pageCount * 60).Take(60).ToList();
                                break;
                        }

                        break;
                    case "Old":
                        switch (thirdOption)
                        {
                            default:
                                fetch = bookByAuthor.OrderBy(x => x.DateAdded).Skip(pageCount * 60).Take(60).ToList();
                                break;
                            case "High":
                                fetch = bookByAuthor.OrderBy(x => x.DateAdded).ThenByDescending(x => x.Score).Skip(pageCount * 60).Take(60).ToList();
                                break;
                            case "Low":
                                fetch = bookByAuthor.OrderBy(x => x.DateAdded).ThenBy(x => x.Score).Skip(pageCount * 60).Take(60).ToList();
                                break;
                        }

                        break;
                }

                listBook.AddRange(fetch);

                count++;

                listAuthors.AddRange(authors.Skip(count).Take(1));

                authorModel = listAuthors.Last();
            }

            return listBook;
        }

        private static List<Book> ListBooksByEditions(AsTuLusEntities context, int pageCount, string firstOption,
                                                      string secondOption, string thirdOption)
        {
            List<Book> fetch;

            List<Book> listBook = new List<Book>();

            IQueryable<Editor> editors = from e in context.Editor.OrderBy(x => x.EditorName)
                                         select e;

            List<Editor> listEditors = new List<Editor>
                                {
                                    editors.First()
                                };

            int count = 0;

            Editor editorModel = listEditors.Last();

            while (listBook.Count < 60)
            {
                IQueryable<Book> bookByEditor =
                    from e in context.Book.Where(
                        item => item.BookByEditor.Any(x => x.EditorID == editorModel.EditorID))
                    select e;

                switch (secondOption)
                {
                    default:
                        fetch = bookByEditor.OrderBy(x => x.BookID).Skip(pageCount * 60).Take(60).ToList();
                        break;
                    case "New":
                        fetch = bookByEditor.OrderByDescending(x => x.DateAdded).Skip(pageCount * 60).Take(60).ToList();
                        break;
                    case "Old":
                        fetch = bookByEditor.OrderBy(x => x.DateAdded).Skip(pageCount * 60).Take(60).ToList();
                        break;
                }

                listBook.AddRange(fetch);

                count++;

                listEditors.AddRange(editors.Skip(count).Take(1));

                editorModel = listEditors.Last();
            }


            return listBook;
        }

        private static List<Book> ListBooksByCategory(AsTuLusEntities context, int pageCount, string firstOption, string secondOption, string thirdOption)
        {
            List<Book> fetch;

            List<Book> listBook = new List<Book>();
            IQueryable<Category> categories = from c in context.Category.OrderBy(x => x.CategoryName)
                                              select c;

            List<Category> listModel = new List<Category>
                                {
                                    categories.First()
                                };

            int count = 0;

            Category model = listModel.Last();

            while (listBook.Count < 60)
            {
                Category model1 = model;

                IQueryable<Book> booksByCat =
                    from b in context.Book.Where(item => item.CategoryID == model1.CategoryID)
                    select b;

                switch (secondOption)
                {
                    default:
                        switch (thirdOption)
                        {
                            default:
                                fetch = booksByCat.OrderBy(x => x.BookID).Skip(pageCount * 60).Take(60).ToList();
                                break;
                            case "High":
                                fetch = booksByCat.OrderBy(x => x.BookID).ThenByDescending(x => x.Score).Skip(pageCount * 60).Take(60).ToList();
                                break;
                            case "Low":
                                fetch = booksByCat.OrderBy(x => x.BookID).ThenBy(x => x.Score).Skip(pageCount * 60).Take(60).ToList();
                                break;
                        }
                        break;
                    case "New":
                        switch (thirdOption)
                        {
                            default:
                                fetch = booksByCat.OrderBy(x => x.DateAdded).Skip(pageCount * 60).Take(60).ToList();
                                break;
                            case "High":
                                fetch = booksByCat.OrderBy(x => x.DateAdded).ThenByDescending(x => x.Score).Skip(pageCount * 60).Take(60).ToList();
                                break;
                            case "Low":
                                fetch = booksByCat.OrderBy(x => x.DateAdded).ThenBy(x => x.Score).Skip(pageCount * 60).Take(60).ToList();
                                break;
                        }

                        break;
                    case "Old":
                        switch (thirdOption)
                        {
                            default:
                                fetch = booksByCat.OrderBy(x => x.DateAdded).Skip(pageCount * 60).Take(60).ToList();
                                break;
                            case "High":
                                fetch = booksByCat.OrderBy(x => x.DateAdded).ThenByDescending(x => x.Score).Skip(pageCount * 60).Take(60).ToList();
                                break;
                            case "Low":
                                fetch = booksByCat.OrderBy(x => x.DateAdded).ThenBy(x => x.Score).Skip(pageCount * 60).Take(60).ToList();
                                break;
                        }

                        break;
                }

                listBook.AddRange(fetch);

                count++;

                listModel.AddRange(categories.Skip(count).Take(1));

                model = listModel.Last();
            }

            return listBook;
        }

        public List<BookDisplay> ListRandomBooks(List<BookDisplay> currentListBooks, int pageNumber)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                Random random = new Random();

                var book = from b in context.Book
                           select b;

                int totalCount = book.Count();

                List<Book> listBooks = new List<Book>();

                int bookCount = context.Book.Count();
                int currentCount = 0;

                while (listBooks.Count < 60 && currentCount < bookCount)
                {
                    int randomNumber = random.Next(1, totalCount);

                    Book bookToAdd = context.Book.Find(randomNumber);

                    if (listBooks.Any())
                    {
                        if (listBooks.All(item => item.BookID != randomNumber) && currentListBooks.All(item => item.BookID != randomNumber))
                        {
                            listBooks.Add(bookToAdd);
                        }
                    }
                    else
                    {
                        if (currentListBooks.All(item => item.BookID != randomNumber))
                        {
                            listBooks.Add(bookToAdd);    
                        }
                    }

                    currentCount++;
                }

                List<BookDisplay> listToReturn = listBooks.Select(item => new BookDisplay(item)).ToList();

                return listToReturn;
            }
        }

        public List<AuthorModel> ListAuthorsByBook(int bookId)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {

                List<AuthorModel> listToReturn = new List<AuthorModel>();

                IQueryable<AuthorByBook> autBookQry = context.AuthorByBook.Where(aut => aut.BookID == bookId);

                if (autBookQry.Any())
                {
                    foreach (AuthorByBook authorByBook in autBookQry)
                    {
                        authorByBook.Author.TimesConsulted++;
                        authorByBook.Author.LastTimeChecked = DateTime.Now;

                        listToReturn.Add(new AuthorModel(authorByBook.Author));
                    }

                    context.SaveChanges();
                }

                return listToReturn;
            }

        }

        public Book GetBookById(int bookId)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                Book bookToReturn = context.Book.Include("Review").Include("Review.Comment").FirstOrDefault(item => item.BookID == bookId);

                bookToReturn.TimesConsulted++;

                context.Entry(bookToReturn).State = EntityState.Modified;

                context.SaveChanges();

                return bookToReturn;
            }
            
        }

        public BookStatus GetRelationshipForBook(UserAccount userToShow, Book bookToShow)
        {
            BookStatus returnValue = new BookStatus();

            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                IQueryable<BookByUser> bookRelationShip = from br in context.BookByUser
                                                          where br.BookID == bookToShow.BookID
                                                          where br.UserID == userToShow.AccountID
                                                          select br;

                BookByUser bookRel;

                if (!bookRelationShip.Any())
                {
                    bookRel = new BookByUser
                    {
                        BookID = bookToShow.BookID,
                        UserID = userToShow.AccountID,
                        DateCreated = DateTime.Now,
                        DateModified = DateTime.Now,
                    };

                    context.BookByUser.Add(bookRel);
                }
                else
                {
                    bookRel = bookRelationShip.First();
                }

                switch (bookRel.LikeState)
                {
                    case null:
                        break;
                    case (int)EnumLibrary.BookRelationshipEnum.Liked:
                        break;
                    case (int)EnumLibrary.BookRelationshipEnum.Unliked:
                        break;
                }

                IQueryable<UserFavorites> objFavQuery = from fav in context.UserFavorites
                                                        where fav.BookID == bookToShow.BookID
                                                        select fav;

                if (objFavQuery.Any())
                {
                    returnValue.BookFavStatus = 1;
                }

                return returnValue;
            }
        }

        public BookDisplay GetRelationshipForBookDisplay(UserAccount userToShow, Book bookToShow)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                IQueryable<BookByUser> bookRelationShip = from br in context.BookByUser
                                                          where br.BookID == bookToShow.BookID
                                                          where br.UserID == userToShow.AccountID
                                                          select br;

                BookByUser bookRel;

                if (!bookRelationShip.Any())
                {
                    bookRel = new BookByUser
                    {
                        BookID = bookToShow.BookID,
                        UserID = userToShow.AccountID,
                        DateCreated = DateTime.Now,
                        DateModified = DateTime.Now,
                    };

                    context.BookByUser.Add(bookRel);
                }
                else
                {
                    bookRel = bookRelationShip.First();
                }

                BookDisplay displayToReturn = new BookDisplay(bookRel);

                return displayToReturn;
            }
        }

        public bool CheckIfBookPresent(BookModel bookToCheck)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                IQueryable<Book> book = from bo in context.Book
                                        where bo.BookName == bookToCheck.BookName
                                        select bo;

                if (!book.Any())
                {
                    return false;
                }

                if (bookToCheck.Year == null || bookToCheck.PageNumber == null)
                {
                    //return Enumerable.Any(Book, book => book.Editor.EditorName == bookToCheck.EditorName &&
                    //                                    book.PrimaryAuthor == bookToCheck.Author1 &&
                    //                                    book.SecondAuthor == bookToCheck.Author2 &&
                    //                                    book.ThirdAuthor == bookToCheck.Author3);
                }

                //return Enumerable.Any(Book.Where(book => book.Editor.EditorName == bookToCheck.EditorName)
                //                          .Where(book => book.PublishedYear != null && book.PageNumber != null),
                //                                        book => book.PublishedYear == int.Parse(bookToCheck.Year) &&
                //                                        book.PageNumber == int.Parse(bookToCheck.PageNumber));
                return true;
            }
            
        }

        public bool CheckIfBookPresent(Book bookToCheck)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                IQueryable<Book> bookQuery = from book in context.Book
                                             where book.BookName == bookToCheck.BookName
                                             where book.PublishedYear == bookToCheck.PublishedYear
                                             where book.PageNumber == bookToCheck.PageNumber
                                             select book;

                return bookQuery.Any(); 
            }
            
        }

        public UserActionResult UpdateBookStatus(int bookID, string buttonId, string userName)
        {
            UserActionResult result = new UserActionResult();

            UserAccount user = UserRepository.GetUserByName(userName);

            using (AsTuLusEntities dbcontext = new AsTuLusEntities())
            {
                Book concernedBook = dbcontext.Book.First(item => item.BookID == bookID);

                BookByUser bookRelationship = dbcontext.BookByUser.FirstOrDefault(item =>
                                                                       item.UserID == user.AccountID &&
                                                                       item.BookID == bookID);

                EnumLibrary.BookRelationshipEnum value;

                switch (buttonId)
                {
                    case "upvote":
                        value = EnumLibrary.BookRelationshipEnum.Liked;
                        break;
                    case "downvote":
                        value = EnumLibrary.BookRelationshipEnum.Unliked;
                        break;
                    default:
                        value = EnumLibrary.BookRelationshipEnum.Liked;
                        break;
                }

                if (bookRelationship == null)
                {
                    bookRelationship = new BookByUser
                    {
                        BookID = bookID,
                        Book = concernedBook,
                        LikeState = null,
                        DateCreated = DateTime.Now,
                        UserID = user.AccountID,
                    };

                    dbcontext.BookByUser.Add(bookRelationship);

                    dbcontext.Entry(bookRelationship).State = EntityState.Added;

                    dbcontext.SaveChanges();
                }

                switch (bookRelationship.LikeState)
                {
                        // Si le statut du livre est "Liked"
                    case (int)EnumLibrary.BookRelationshipEnum.Liked:
                        // Si la valeur saisie est "Liked"
                        if (value == EnumLibrary.BookRelationshipEnum.Liked)
                        {
                            // On annule le vote.
                            bookRelationship.LikeState = null;
                            result.StatusValue = (int)EnumLibrary.ActionStatus.Nulled;
                            bookRelationship.Book.Score--;
                        }
                        else
                        {
                            // On ne fait que confirmer son statut.
                            bookRelationship.LikeState = (int)EnumLibrary.BookRelationshipEnum.Unliked;
                            result.StatusValue = (int)EnumLibrary.ActionStatus.Unliked;
                        }
                            
                        break;
                    case null:
                        if (value == EnumLibrary.BookRelationshipEnum.Liked)
                        {
                            bookRelationship.LikeState = (int)EnumLibrary.BookRelationshipEnum.Liked;
                            result.StatusValue = (int)EnumLibrary.ActionStatus.Liked;
                            bookRelationship.Book.Score++;
                        }
                        else
                        {
                            bookRelationship.LikeState = (int)EnumLibrary.BookRelationshipEnum.Unliked;
                            result.StatusValue = (int)EnumLibrary.ActionStatus.Unliked;
                            bookRelationship.Book.Score--;
                        }
                        break;
                    case (int)EnumLibrary.BookRelationshipEnum.Unliked:
                        if (value == EnumLibrary.BookRelationshipEnum.Liked)
                        {
                            bookRelationship.LikeState = (int)EnumLibrary.BookRelationshipEnum.Liked;
                            result.StatusValue = (int)EnumLibrary.ActionStatus.Liked;
                            bookRelationship.Book.Score--;
                        }
                        else
                        {
                            bookRelationship.LikeState = null;
                            result.StatusValue = (int)EnumLibrary.ActionStatus.Nulled;
                        }
                        break;
                }

                dbcontext.Entry(bookRelationship).State = EntityState.Modified;

                dbcontext.Entry(concernedBook).State = EntityState.Modified;

                dbcontext.SaveChanges();

                result.ScoreValue = bookRelationship.Book.Score;

                result.ResultMessage = String.Empty;
            }

            return result;
        }

        #endregion

        #region Private Methods

        private BookModel BookToBookModel(Book bookToConvert)
        {
            BookModel bookToReturn = new BookModel
                {
                    BookName = bookToConvert.BookName,
                    CollectionTag = bookToConvert.BookCollection,

                };

            return bookToReturn;
        }

        #endregion
    }
}