using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using AsTuLuWebProject.Database;
using AsTuLuWebProject.Models.ViewModels;
using AsTuLuWebProject.Utilities;
using AsTuLuWebProject.Utilities.Enums;
using EntityState = System.Data.Entity.EntityState;

namespace AsTuLuWebProject.Models.Interfaces.DAL
{
    public class BookRepository : IBookRepository
    {
        #region Properties

        private static readonly IEditorRepository editorRepository = new EditorRepository();

        private static readonly ICategoryRepository categoryRepository = new CategoryRepository();

        private static readonly IUserRepository userRepository = new UserRepository();

        #endregion

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
                            listBook = ListBooksByEditor(context, pageCount, firstOption, secondOption, thirdOption);
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
                    UserAccount account = userRepository.GetUser((int)userId);

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

        private List<Book> ListBooksByAuthor(AsTuLusEntities context, int pageCount, string firstOption, string secondOption, string thirdOption)
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

        private static List<Book> ListBooksByEditor(AsTuLusEntities context, int pageCount, string firstOption, string secondOption, string thirdOption)
        {
            List<Book> listBooks = new List<Book>();

            IQueryable<Editor> editors = from e in context.Editor.OrderBy(x => x.EditorName)
                                         select e;

            List<Editor> colctEditors = new List<Editor>()
                {
                    editors.First()
                };


            int count = 0;

            Editor model = colctEditors.Last();

            while (listBooks.Count() < 60)
            {
                Editor baseModel = model;

                IQueryable<BookByEditor> booksByEditor = from bbe in context.BookByEditor
                                                         where bbe.EditorID == baseModel.EditorID
                                                         select bbe;

                if (booksByEditor.Any())
                {
                    if (booksByEditor.Count() < (listBooks.Count + booksByEditor.Count()))
                    {
                        listBooks.AddRange(booksByEditor.OrderBy(x => x.Book.BookName).Select(y => y.Book).ToList());    
                    }
                    else
                    {
                        int diff = 60 - listBooks.Count;

                        listBooks.AddRange(booksByEditor.OrderBy(x => x.Book.BookName).Select(y => y.Book).Take(diff));
                    }
                }

                count++;

                colctEditors.AddRange(editors.Skip(count).Take(1));

                model = colctEditors.Last();
            }
            
            return listBooks;
        }

        private static List<Book> ListBooksByCategory(AsTuLusEntities context, int pageCount, string firstOption, string secondOption, string thirdOption)
        {
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

                List<Book> fetch;
              
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

        public BookModel GetBookById(int bookId)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                Book bookToReturn = context.Book.Include("Review").Include("Review.Comment").FirstOrDefault(item => item.BookID == bookId);

                if (bookToReturn == null)
                {
                    throw new ObjectNotFoundException("Pas de livre pour ce numéro.");
                }

                bookToReturn.TimesConsulted++;

                context.Entry(bookToReturn).State = EntityState.Modified;

                context.SaveChanges();

                return new BookModel(bookToReturn);
            }
        }

        public BookStatus GetRelationshipForBook(UserAccount userToShow, BookModel bookToShow)
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

        public bool CheckIfBookPresent(int bookID)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                return context.Book.Any(bk => bk.BookID == bookID);
            }
        }

        public UserActionResult UpdateBookStatus(int bookID, string buttonId, string userName)
        {
            UserActionResult result = new UserActionResult();

            UserAccount user = userRepository.GetUserByName(userName);

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
    }
}