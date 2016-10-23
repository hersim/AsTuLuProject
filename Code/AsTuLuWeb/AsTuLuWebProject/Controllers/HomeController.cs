using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using AsTuLuWebProject.Database;
using AsTuLuWebProject.Models.Interfaces;
using AsTuLuWebProject.Models.Interfaces.DAL;
using AsTuLuWebProject.Models.ViewModels;

namespace AsTuLuWebProject.Controllers
{
    public class HomeController : Controller
    {
        private static readonly IBookRepository BookRepository = new BookRepository();
        private static readonly IUserRepository UserRepository = new UserRepository();

        private const string PAGE_NUMBER = "pageNumber";
        private const string FIRST_SELECTION = "firstSelection";
        private const string SECOND_SELECTION = "secondSelection";
        private const string THIRD_SELECTION = "thirdSelection";
        private const string LIST_BOOKS = "listBooks";
        private const string BROWSING_MODE = "browsingMode";

        public ActionResult Index()
        {
            Session[PAGE_NUMBER] = null;

            IEnumerable<SelectListItem> listFirstsOptions = BuildFirstFilter();

            if (Session[FIRST_SELECTION] != null)
            {
                string selection = Session[FIRST_SELECTION] as string;

                foreach (SelectListItem selectListItem in listFirstsOptions
                    .Where(selectListItem => selectListItem.Value == selection))
                {
                    selectListItem.Selected = true;
                }
            }

            ViewData[FIRST_SELECTION] = listFirstsOptions;

            IEnumerable<SelectListItem> listSecondOptions = BuildSecondFilter();

            if (Session[SECOND_SELECTION] != null)
            {
                string selection = Session[SECOND_SELECTION] as string;

                foreach (SelectListItem listSecondOption in listSecondOptions.Where(listSecondOption => listSecondOption.Value == selection))
                {
                    listSecondOption.Selected = true;
                }
            }

            ViewData[SECOND_SELECTION] = listSecondOptions;

            IEnumerable<SelectListItem> listThirdOptions = BuildThirdFilter();

            if (Session[THIRD_SELECTION] != null)
            {
                string selection = Session[THIRD_SELECTION] as string;

                foreach (SelectListItem thirdOption in listThirdOptions.Where(thirdOption => thirdOption.Value == selection))
                {
                    thirdOption.Selected = true;
                }
            }

            ViewData[THIRD_SELECTION] = listThirdOptions;

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult ListBooks(string firstSelection, string secondSelection, string thirdSelection)
        {
            int pageNumber = Session[PAGE_NUMBER] == null ? 1 : (int)Session[PAGE_NUMBER];

            string firstOption = Session[FIRST_SELECTION] as string;

            string secondOption = Session[SECOND_SELECTION] as string;

            string thirdOption = Session[THIRD_SELECTION] as string;

            if (!String.IsNullOrWhiteSpace(firstSelection))
            {
                firstOption = firstSelection;
            }

            if (!String.IsNullOrWhiteSpace(secondSelection))
            {
                secondOption = secondSelection;
            }

            if (!String.IsNullOrWhiteSpace(thirdSelection))
            {
                thirdOption = thirdSelection;
            }

            List<BookDisplay> listBooks;

            if (User.Identity.IsAuthenticated)
            {
                UserAccount account = UserRepository.GetUserByName(User.Identity.Name);

                listBooks = BookRepository.GetListOfBooks(pageNumber, firstOption, secondOption, thirdOption,
                                                                 account.AccountID);
            }
            else
            {
                listBooks = BookRepository.GetListOfBooks(pageNumber, firstOption, secondOption, thirdOption,
                                                                 null);
            }

            pageNumber++;

            Session[PAGE_NUMBER] = pageNumber;

            return PartialView("ResultTable", listBooks);
        }

        [HttpGet]
        public ActionResult RandomMode()
        {
            int pageNumber = Session[PAGE_NUMBER] == null ? 1 : (int)Session[PAGE_NUMBER];

            List<BookDisplay> listBooks = new List<BookDisplay>();

            if (Session[LIST_BOOKS] == null)
            {
                if (Session[BROWSING_MODE] != null)
                {
                    string mode = (string)Session[BROWSING_MODE];

                    if (mode == "random")
                    {
                        listBooks = Session[LIST_BOOKS] as List<BookDisplay>;
                    }
                    else
                    {
                        listBooks = BookRepository.ListRandomBooks(listBooks, pageNumber);
                    }
                }
                else
                {
                    listBooks = BookRepository.ListRandomBooks(listBooks, pageNumber);
                }
            }
            else
            {
                listBooks = (List<BookDisplay>)Session[LIST_BOOKS];

                listBooks = BookRepository.ListRandomBooks(listBooks, pageNumber);
            }

            Session[LIST_BOOKS] = listBooks;

            Session[BROWSING_MODE] = "random";

            pageNumber++;

            Session[PAGE_NUMBER] = pageNumber;

            return View(listBooks);
        }

        #region Private parts
        private static IEnumerable<SelectListItem> BuildFirstFilter()
        {
            List<SelectListItem> listToReturn = new List<SelectListItem>();

            SelectListItem itemToAdd = new SelectListItem
            {
                Text = "Catégorie",
                Value = "Category"
            };

            listToReturn.Add(itemToAdd);

            itemToAdd = new SelectListItem
            {
                Text = "Auteur",
                Value = "Author"
            };

            listToReturn.Add(itemToAdd);

            itemToAdd = new SelectListItem
            {
                Text = "Maison éditions",
                Value = "Edition"
            };

            listToReturn.Add(itemToAdd);

            return listToReturn;
        }

        private static IEnumerable<SelectListItem> BuildSecondFilter()
        {
            List<SelectListItem> listToReturn = new List<SelectListItem>();

            SelectListItem itemToAdd = new SelectListItem
            {
                Text = "Récents",
                Value = "New"
            };

            listToReturn.Add(itemToAdd);

            itemToAdd = new SelectListItem
            {
                Text = "Ancien",
                Value = "Old"
            };

            listToReturn.Add(itemToAdd);

            return listToReturn;
        }

        private static IEnumerable<SelectListItem> BuildThirdFilter()
        {
            List<SelectListItem> listToReturn = new List<SelectListItem>();

            SelectListItem itemToAdd = new SelectListItem
            {
                Text = "Haut",
                Value = "High"
            };

            listToReturn.Add(itemToAdd);

            itemToAdd = new SelectListItem
            {
                Text = "Bas",
                Value = "Low"
            };

            listToReturn.Add(itemToAdd);

            return listToReturn;
        }

        #endregion

    }
}
