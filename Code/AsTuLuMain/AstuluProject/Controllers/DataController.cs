using System;
using AstuluProject.Models.Interfaces.DAL;
using LinqToExcel;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AstuluProject.Models.Database;
using AstuluProject.Models;
using AstuluProject.Models.Interfaces;

namespace AstuluProject.Controllers
{
    public class DataController : Controller
    {
        private readonly IBookRepository BookRepository;
        private readonly IEditorRepository EditorRepository;
        private readonly ICategoryRepository CategoryRepository;

        public enum Language
        {
            French,
            English
        }

        public DataController()
        {
            AsTuLusEntities context = new AsTuLusEntities();

            BookRepository = new BookRepository(context);

            EditorRepository = new EditorRepository(context);

            CategoryRepository = new CategoryRepository(context);
        }

        [HttpGet]
        public ActionResult WriteScripts()
        {
            return View();
        }

        [HttpPost]
        public ActionResult WriteScripts(string submitButton)
        {
            switch (submitButton)
            {
                case "Category":
                    break;
                case "Book":
                    break;
                case "Editor":
                    break;
            }

            return View();
        }

        [HttpGet]
        public ActionResult ReadExcelFile() 
        {
            return View();
        }

        [HttpPost]
        public ActionResult ReadExcelFile(HttpPostedFileBase file2)
        {
            try
            {
                HttpPostedFileBase file = Request.Files[0];

                if (file != null && file.ContentLength > 0)
                {
                    // extract only the filename
                    var name = Path.GetFileName(file.FileName);

                    if (name != null)
                    {
                        var fileName = name.Replace(" ", "").Replace("-", "");

                        var path = Server.MapPath("~/ExcelFiles/Uploads");

                        Directory.CreateDirectory(path);

                        path = Path.Combine(Server.MapPath("~/ExcelFiles/Uploads"), fileName);

                        file.SaveAs(path);

                        ExcelQueryFactory excel = new ExcelQueryFactory(path);

                        excel.AddMapping<BookToAddModel>(_x => _x.Name, "Titre");
                        excel.AddMapping<BookToAddModel>(_x => _x.Author1, "Auteur1");
                        excel.AddMapping<BookToAddModel>(_x => _x.Author2, "Auteur2");
                        excel.AddMapping<BookToAddModel>(_x => _x.Author3, "Auteur3");
                        excel.AddMapping<BookToAddModel>(_x => _x.Author3, "ISBN");
                        excel.AddMapping<BookToAddModel>(_x => _x.CollectionTag, "Collection");
                        excel.AddMapping<BookToAddModel>(_x => _x.SerieTag, "Série");
                        excel.AddMapping<BookToAddModel>(_x => _x.CollectionTag, "Collection");
                        excel.AddMapping<BookToAddModel>(_x => _x.Number, "Numéro livre");
                        excel.AddMapping<BookToAddModel>(_x => _x.EditorName, "Éditeur");
                        excel.AddMapping<BookToAddModel>(_x => _x.Language, "Langage");
                        excel.AddMapping<BookToAddModel>(_x => _x.CategoryName, "Catégorie");
                        excel.AddMapping<BookToAddModel>(_x => _x.SubCategoryName, "Sous-catégorie");
                        excel.AddMapping<BookToAddModel>(_x => _x.Translated, "Traduit");
                        excel.AddMapping<BookToAddModel>(_x => _x.Year, "Année de parution");
                        excel.AddMapping<BookToAddModel>(_x => _x.PageNumber, "Nombre page");

                        IQueryable<BookToAddModel> books = from x in excel.Worksheet<BookToAddModel>("Inventaire")
                                                          select x;

                        int itemCount = books.Count();

                        int itemAdded = 0;

                        foreach (BookToAddModel book in books)
                        {
                            bool alreadyCreated = BookRepository.CheckIfBookPresent(book);

                            if (!alreadyCreated)
                            {
                                BookRepository.AddBook(book);
                                BookRepository.Save();
                                itemAdded++;
                            }
                        }

                        if (itemAdded != itemCount)
                        {
                            ModelState.AddModelError("", "There were " + (itemCount - itemAdded) + " items already presents in the database.");
                        }
                        else
                        {
                            ModelState.AddModelError("", "Operation successful.");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            

            return View();
        }
    }
}
