﻿using System.Web.Mvc;
using AsTuLuWebProject.Database;
using AsTuLuWebProject.Models;
using AsTuLuWebProject.Models.Interfaces;
using AsTuLuWebProject.Models.Interfaces.DAL;
using AsTuLuWebProject.Utilities;
using AsTuLuWebProject.Utilities.Containers;

namespace AsTuLuWebProject.Controllers
{
    public class BookController : Controller
    {
        private static readonly IBookRepository BookRepository = new BookRepository();
        private static readonly IUserRepository UserRepository = new UserRepository();
        private static readonly ICategoryRepository CategoryRepository = new CategoryRepository();
        private static readonly IEditorRepository EditorRepository = new EditorRepository();

        public ActionResult UpdateRelationship(int bookID, string buttonId)
        {
            // # update la relation en utilisant le _book id, en allant chercher le request.identity et le id du bouton.
            UserActionResult result = new UserActionResult();
            
            if (!Request.IsAuthenticated)
            {
                result.ResultMessage = "Vous devez vous connecter pour effectuer cette action!";
            }
            else
            {
                result = BookRepository.UpdateBookStatus(bookID, buttonId, User.Identity.Name);
            }

            return Json(result);
        }

        public ActionResult BookDetails(int bookID)
        {
            BookContainer bookToShow = new BookContainer();

            BookModel book = BookRepository.GetBookById((int)bookID);

            if (book == null)
            {
                return RedirectToAction("Index", "Home");
            }

            bookToShow.BookToShow = book;

            bookToShow.BookRelationship = new BookStatus();

            bookToShow.ListAuthors = BookRepository.ListAuthorsByBook((int) bookID);

            bookToShow.ListEditors = EditorRepository.ListEditorsByBookId((int) bookID);

            if (Request.IsAuthenticated)
            {
                UserAccount userToShow = UserRepository.GetUserByName(User.Identity.Name);

                if (userToShow == null)
                {
                    throw new System.Exception("User was not found");
                }

                bookToShow.BookRelationship = BookRepository.GetRelationshipForBook(userToShow, book);
            }

            return View(bookToShow);
        }

        public ActionResult ListBySerie(string serie)
        {
            throw new System.NotImplementedException();
        }

        public ActionResult ListByCategory(int categoryID)
        {
            throw new System.NotImplementedException();
        }

        public ActionResult ListByAuthor(string authorName)
        {
            throw new System.NotImplementedException();
        }

        public ActionResult ListByEditor(int editorid)
        {
            throw new System.NotImplementedException();
        }
    }
}
