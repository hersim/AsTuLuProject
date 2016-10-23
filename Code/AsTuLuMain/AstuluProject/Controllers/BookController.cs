using System.Web.Mvc;
using AstuluProject.Models.Database;
using AstuluProject.Models.Interfaces.DAL;
using AstuluProject.Utilities.Containers;
using AstuluProject.Models.Interfaces;

namespace AstuluProject.Controllers
{
    public class BookController : Controller
    {
        private static IBookRepository mBookRepository;
        private static IUserRepository mUserRepository;

        //[Authorize]
        //public ActionResult UpdateRelationship(int _bookId, string _buttonId)
        //{
        //    // # update la relation en utilisant le book id, en allant chercher le request.identity et le id du bouton.

        //    if (!Request.IsAuthenticated)
        //    {
                
        //    }
        //}

        public ActionResult BookDetails(int? _bookID)
        {
            bool hasDisposed = false;

            if (mBookRepository == null || mBookRepository.HasDisposed())
            {
                AsTuLusEntities db = new AsTuLusEntities();

                if (mBookRepository == null || mBookRepository.HasDisposed())
                {
                    if (mBookRepository != null && mBookRepository.HasDisposed())
                    {
                        hasDisposed = true;
                    }
                    
                    mBookRepository = new BookRepository(db);

                    mUserRepository = new UserRepository(db);
                }


                mBookRepository = new BookRepository(db);
            }

            BookContainer bookToShow = new BookContainer();

            Book book = mBookRepository.GetBookById((int)_bookID, hasDisposed);

            if (book == null)
            {
                return RedirectToAction("Index", "Home");
            }

            bookToShow.BookToShow = book;

            if (Request.IsAuthenticated)
            {
                UserAccount userToShow = mUserRepository.GetUserByName(User.Identity.Name);

                if (userToShow == null)
                {
                    throw new System.Exception("User was not found");
                }

                bookToShow.BookRelationship = mBookRepository.GetRelationshipForBook(userToShow, book);
            }

            mBookRepository.Dispose();

            return View(bookToShow);
        }

        public ActionResult ListBySerie(string _serie)
        {
            throw new System.NotImplementedException();
        }

        public ActionResult ListByCategory(int _categoryID)
        {
            throw new System.NotImplementedException();
        }

        public ActionResult ListByAuthor(string _authorName)
        {
            throw new System.NotImplementedException();
        }

        public ActionResult ListByEditor(int _editorid)
        {
            throw new System.NotImplementedException();
        }
    }
}
