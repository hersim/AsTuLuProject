using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Diagnostics;
using System.Linq;
using System.Data;
using AstuluProject.Models.Database;
using System.Transactions;

namespace AstuluProject.Models.Interfaces.DAL
{
    public class BookRepository : IBookRepository
    {
        #region Properties

        private readonly AsTuLusEntities Context;

        private readonly IEditorRepository EditorRepository;

        private readonly ICategoryRepository CategoryRepository;

        private bool Disposed;

        #endregion

        #region Public Methods

        public BookRepository(AsTuLusEntities context)
        {
            Context = context;

            EditorRepository = new EditorRepository(context);
            CategoryRepository = new CategoryRepository(context);

            Disposed = false;
        }

        public List<Book> ListBook()
        {
            return Context.Book.ToList();
        }

        public List<Book> ListHighestRatingBook()
        {
            return Context.Book.OrderBy(_x => _x.Score).ToList();
        }

        public List<Book> ListTwentyLatestBook(int pageNumber, string firstOption, string secondOption)
        {
            List<Book> listBook = new List<Book>();

            IQueryable<Book> bookQuery = from b in Context.Book
                                         select b;

            int pageCount = pageNumber - 1;

            //switch (firstOption)
            //{
            //    case "New":
            //        switch (secondOption)
            //        {
            //            case "Score":
            //                listBook = bookQuery.OrderByDescending(_x => _x.DateAdded).ThenBy(_x => _x.Score).Include("Editor").Include("Review").Include("Category").Skip(pageCount * 20).Take(20).ToList();
            //                break;
            //            case "Newer":
            //                listBook = bookQuery.OrderByDescending(_x => _x.DateAdded).Include("Editor").Include("Review").Include("Category").Skip(pageCount * 20).Take(20).ToList();
            //                break;
            //            case "Popular":
            //                listBook = bookQuery.OrderByDescending(_x => _x.DateAdded).ThenBy(_x => _x.TimesConsulted).Include("Editor").Include("Review").Include("Category").Skip(pageCount * 20).Take(20).ToList();
            //                break;
            //        }
            //        break;
            //    case "Viral":
            //        switch (secondOption)
            //        {
            //            case "Score":
            //                listBook = bookQuery.OrderByDescending(_x => _x.Score).Include("Editor").Include("Review").Include("Category").Skip(pageCount * 20).Take(20).ToList();
            //                break;
            //            case "Newer":
            //                listBook = bookQuery.OrderByDescending(_x => _x.Score).ThenBy(_x => _x.DateAdded).Include("Editor").Include("Review").Include("Category").Skip(pageCount * 20).Take(20).ToList();
            //                break;
            //            case "Popular":
            //                listBook = bookQuery.OrderByDescending(_x => _x.Score).ThenBy(_x => _x.TimesConsulted).Include("Editor").Include("Review").Include("Category").Skip(pageCount * 20).Take(20).ToList();
            //                break;
            //        }
            //        break;
            //}

            (this).Dispose();

            return listBook;
        }

        public bool HasDisposed()
        {
            return Disposed;
        }

        public List<Book> ListRandomBook(int pageNumber)
        {
            Random random = new Random();

            var Book = from b in Context.Book
                       select b;

            int totalCount = Book.Count();

            List<Book> listToReturn = new List<Book>();

            while (listToReturn.Count < 20)
            {
                int randomNumber = random.Next(1, totalCount);

                if (listToReturn.All(_item => _item.BookID != randomNumber))
                {
                    Book bookToAdd = Context.Book.Find(randomNumber);

                    listToReturn.Add(bookToAdd);
                }
            }

            return listToReturn;
        }

        public Book GetBookById(int bookId, bool hasDisposed)
        {
            Book bookToReturn = Context.Book.Include("Editor").Include("Review").Include("Review.Comments").Include("Category").FirstOrDefault(_item => _item.BookID == bookId);

            if (bookToReturn == null)
            {
                return null;
            }

            if (!hasDisposed)
            {
                bookToReturn.TimesConsulted++;

                //bookToReturn.Editor.TimeEditorConsulted++;

                //bookToReturn.Category.TimesCategoryConsulted++;
            }

            Save();

            return bookToReturn;
        }

        public BookByUser GetRelationshipForBook(UserAccount userAccount, Book bookToShow)
        {
            //IQueryable<BookByUser> bookRelationShip = from br in Context.BookByUsers
            //    where br.BookID == bookToShow.BookID
            //    where br.UserAccountID == userAccount.AccountID
            //    select br;

            BookByUser bookRel;

            //if (!bookRelationShip.Any())
            //{
            //    bookRel = new BookByUser
            //    {
            //        BookID = bookToShow.BookID,
            //        UserAccountID = userAccount.AccountID,
            //        DateCreated = DateTime.Now,
            //        DateModified = DateTime.Now,
            //    };

            //    Context.BookByUsers.Add(bookRel);
            //}
            //else
            //{

            //}

            bookRel = Context.BookByUser.First();

            Dispose(true);

            return bookRel;
        }

        public bool CheckIfBookPresent(BookToAddModel bookToCheck)
        {
            IQueryable<Book> Book = from bo in Context.Book
                                    where bo.BookName == bookToCheck.Name
                                    select bo;

            if (!Book.Any())
            {
                return false;
            }

            if (bookToCheck.Year == null || bookToCheck.PageNumber == null)
            {
                //return Enumerable.Any(Book, book => book.Editor.EditorName == bookToCheck.EditorName && 
                //    book.PrimaryAuthor == bookToCheck.Author1 && 
                //    book.SecondAuthor == bookToCheck.Author2 && 
                //    book.ThirdAuthor == bookToCheck.Author3);
            }

            //return Enumerable.Any(Book.Where(book => book.Editor.EditorName == bookToCheck.EditorName)
            //                          .Where(book => book.PublishedYear != null && book.PageNumber != null), 
            //                                        book => book.PublishedYear == int.Parse(bookToCheck.Year) && 
            //                                        book.PageNumber == int.Parse(bookToCheck.PageNumber));
            return false;
        }

        public bool CheckIfBookPresent(Book bookToCheck)
        {
            IQueryable<Book> books = from bo in Context.Book
                                     where bo.BookName == bookToCheck.BookName
                                     where bo.PublishedYear == bookToCheck.PublishedYear
                                     where bo.PageNumber == bookToCheck.PageNumber
                                     select bo;

            return books.Any();
        }

        public void AddBook(Book book)
        {
            Context.Book.Add(book);

            Context.Entry(book).State = EntityState.Added;
        }

        public void AddBook(BookToAddModel bookModel)
        {
            if (Context.Database.Connection.State == ConnectionState.Closed)
            {
                Context.Database.Connection.Open();
            }

            Book bookToAdd = new Book
            {
                BookName = bookModel.Name,
                BookCollection = bookModel.CollectionTag,
                ISBN = bookModel.ISBN
            };

            int number;

            if (int.TryParse(bookModel.Number, out number))
            {
                bookToAdd.BookNumber = number;
            }

            switch (bookModel.Language)
            {
                case "Français":
                    bookToAdd.BookLanguage = 1;
                    break;
                case "Anglais":
                    bookToAdd.BookLanguage = 2;
                    break;
                default:
                    bookToAdd.BookLanguage = 0;
                    break;
            }

            if (!Context.Category.Any(item => item.CategoryName == bookModel.CategoryName))
            {
                Category newCat = new Category
                {
                    CategoryName = bookModel.CategoryName,
                    DateAdded = DateTime.Now,
                    TimesCategoryConsulted = 0
                };

                Context.Category.Add(newCat);

                if (!Context.SubCategory.Any(item => item.SubCategoryName == bookModel.SubCategoryName))
                {
                    SubCategory subCategory = new SubCategory
                    {
                        SubCategoryName = bookModel.SubCategoryName,
                        CategoryID = newCat.CategoryID,
                        DateAdded = DateTime.Now,
                        TimesSubCatConsulted = 0
                    };

                    Context.SubCategory.Add(subCategory);
                }

                bookToAdd.CategoryID = newCat.CategoryID;
            }
            else
            {
                Category cat = Context.Category.First(item => item.CategoryName == bookModel.CategoryName);

                bookToAdd.CategoryID = cat.CategoryID;
            }


            if (bookModel.PageNumber != null)
            {
                bookToAdd.PageNumber = int.Parse(bookModel.PageNumber);
            }

            bookToAdd.PublishedYear = int.Parse(bookModel.Year);

            bookToAdd.DateAdded = DateTime.Now;

            Context.Book.Add(bookToAdd);

            Context.Entry(bookToAdd).State = EntityState.Added;

            try
            {
                Context.SaveChanges();
            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }

            try
            {
                CreateLinksForBook(bookToAdd, bookModel);

            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }

        #endregion

        #region Private Methods

        private void CreateLinksForBook(Book bookToAdd, BookToAddModel bookModel)
        {
            if (!Context.Editor.Any(item => item.EditorName == bookModel.EditorName))
            {
                Editor newEditor = new Editor
                    {
                        DateAdded = DateTime.Now,
                        DateCreated = DateTime.Now,
                        EditorName = bookModel.EditorName,
                        EditorScore = 0,
                        TimeEditorConsulted = 0,
                    };
                
                EditorRepository.AddEditor(newEditor);

                BookByEditor bookByEditor = new BookByEditor
                    {
                        EditorID = newEditor.EditorID,
                        BookID = bookToAdd.BookID
                    };

                Context.BookByEditor.Add(bookByEditor);

                Save();

            }
            else if (!Context.BookByEditor.Any(item => item.BookID == bookToAdd.BookID))
            {
                BookByEditor bookByEditor = new BookByEditor
                {
                    EditorID = Context.Editor.First(item => item.EditorName == bookModel.EditorName).EditorID,
                    BookID = bookToAdd.BookID
                };

                Context.BookByEditor.Add(bookByEditor);
            }

            if (!Context.Category.Any(item => item.CategoryName == bookModel.CategoryName))
            {
                Category newCat = new Category
                    {
                        CategoryName = bookModel.CategoryName,
                        DateAdded = DateTime.Now,
                        TimesCategoryConsulted = 0
                    };

                Context.Category.Add(newCat);

                Save();

                if (!Context.SubCategory.Any(item => item.SubCategoryName == bookModel.SubCategoryName))
                {
                    SubCategory subCategory = new SubCategory
                        {
                            SubCategoryName = bookModel.SubCategoryName,
                            CategoryID = newCat.CategoryID,
                            DateAdded = DateTime.Now,
                            TimesSubCatConsulted = 0
                        };

                    Context.SubCategory.Add(subCategory);

                    Save();
                }
            }

            if (!String.IsNullOrEmpty(bookModel.Author1))
            {
                SetRelationshipForBookByAuthor(bookModel.Author1, bookToAdd.BookID);
            }

            if (!String.IsNullOrEmpty(bookModel.Author2))
            {
                SetRelationshipForBookByAuthor(bookModel.Author2, bookToAdd.BookID);
            }

            if (!String.IsNullOrEmpty(bookModel.Author3))
            {
                SetRelationshipForBookByAuthor(bookModel.Author3, bookToAdd.BookID);
            }
        }
        
        private void SetRelationshipForBookByAuthor(string authorName, int bookID)
        {
            if (!Context.Author.Any(item => item.Name == authorName))
            {
                Author authorToAdd = new Author
                    {
                        Name = authorName,
                        DateAdded = DateTime.Now,
                        Score = 0,
                    };

                Context.Author.Add(authorToAdd);

                Save();

                AuthorByBook relationShip = new AuthorByBook
                {
                    AuthorID = authorToAdd.AuthorID,
                    BookID = bookID
                };

                Context.AuthorByBook.Add(relationShip);

                Save();
            }
            else if (!Context.AuthorByBook.Any(item => item.BookID == bookID && item.Author.Name == authorName))
            {
                AuthorByBook relationShip = new AuthorByBook
                    {
                        AuthorID = Context.Author.First(item => item.Name == authorName).AuthorID,
                        BookID = bookID
                    };

                Context.AuthorByBook.Add(relationShip);

                Save();
            }
        }
        #endregion

        public void DeleteBook(int bookID) 
        {
            Book book = Context.Book.Find(bookID);

            Context.Book.Remove(book);

            Context.Entry(book).State = EntityState.Deleted;
        }

        public void UpdateBook(Book updatedBook)
        {
            Context.Entry(updatedBook).State = EntityState.Modified;
        }

        public void Save() 
        {
            try
            {
                Context.SaveChanges();
            }
            catch (DbEntityValidationException dbEx)
            {
                foreach (var dbValidationError in dbEx.EntityValidationErrors.
                    SelectMany(_dbEntityValidationResult => _dbEntityValidationResult.ValidationErrors))
                {
                    Trace.TraceInformation("Property: {0} Error: {1}", dbValidationError.PropertyName, dbValidationError.ErrorMessage);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!this.Disposed)
            {
                if (disposing)
                {
                    Context.Dispose();
                }
            }
            
            this.Disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        public List<BookModel> ListBooksByAuthor(int authorID)
        {
            List<BookModel> listToReturn = new List<BookModel>();

            if (Context.AuthorByBook.Any(item => item.AuthorID == authorID))
            {
                listToReturn.AddRange(Context.AuthorByBook.Where(item => item.AuthorID == authorID).Select(authorByBook => ToBookModel(authorByBook.Book)));
            }

            return listToReturn;
        }

        private BookModel ToBookModel(Book book)
        {
            BookModel bookToReturn = new BookModel
                    {
                        Name = book.BookName,
                        Collection = book.BookCollection,
                        Serie = book.BookSerie,
                        PageNumber = book.PageNumber,
                        Score = book.Score,
                        DateAdded = book.DateAdded,
                        Number = book.BookNumber,
                        IsTranslated = book.IsTranslated,
                        TimesSeen = book.TimesConsulted,
                    };

            if (book.PublishedYear.HasValue)
            {
                bookToReturn.DatePublished = new DateTime(book.PublishedYear.Value, 01, 01);
            }

            if (Context.BookByUser.Any(item => item.BookID == book.BookID))
            {
                BookByUser itemToLink = Context.BookByUser.First(item => item.BookID == book.BookID) ;

                bookToReturn.UserId = itemToLink.UserID;
                bookToReturn.UserName = itemToLink.UserAccount.UserAccountName;
            }

            return bookToReturn;
        }
    }
}