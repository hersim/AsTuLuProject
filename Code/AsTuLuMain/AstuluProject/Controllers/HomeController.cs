﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using AstuluProject.Models.Database;
using AstuluProject.Models.Interfaces;
using AstuluProject.Models.Interfaces.DAL;

namespace AstuluProject.Controllers
{
    public class HomeController : Controller
    {
        private static IBookRepository BookRepository;

        private const string PAGE_NUMBER = "pageNumber";
        private const string FIRST_SELECTION = "firstSelection";
        private const string SECOND_SELECTION = "secondSelection";
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
            else
            {
                listFirstsOptions.First(_item => _item.Value == "Viral").Selected = true;

                Session[FIRST_SELECTION] = "Viral";
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
            else
            {
                listSecondOptions.First(_item => _item.Value == "Newer").Selected = true;

                Session[SECOND_SELECTION] = "Newer";
            }

            ViewData[SECOND_SELECTION] = listSecondOptions;

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
        
        public ActionResult ListBooks(string firstSelection, string secondSelection)
        {
            if (BookRepository == null || BookRepository.HasDisposed())
            {
                AsTuLusEntities db = new AsTuLusEntities();

                BookRepository = new BookRepository(db);
            }

            int pageNumber = Session[PAGE_NUMBER] == null ? 1 : (int)Session["pageNumber"];

            string _firstSelection = Session[FIRST_SELECTION] as string;

            string _secondSelection = Session[SECOND_SELECTION] as string;

            if (!String.IsNullOrWhiteSpace(firstSelection))
            {
                _firstSelection = firstSelection;
            }

            if (!String.IsNullOrWhiteSpace(secondSelection))
            {
                _secondSelection = secondSelection;
            }

            List<Book> listBooks = BookRepository.ListTwentyLatestBook(pageNumber, _firstSelection, _secondSelection);

            pageNumber++;

            Session[PAGE_NUMBER] = pageNumber;

            return PartialView("ResultTable", listBooks);
        }

        [HttpGet]
        public ActionResult RandomMode()
        {
            if (BookRepository == null || BookRepository.HasDisposed())
            {
                AsTuLusEntities db = new AsTuLusEntities();

                BookRepository = new BookRepository(db);
            }

            int pageNumber = 1;

            Session[PAGE_NUMBER] = 1;

            List<Book> listBooks;

            if (Session[LIST_BOOKS] == null)
            {
                if (Session[BROWSING_MODE] != null)
                {
                    string mode = (string) Session[BROWSING_MODE];

                    if (mode == "random")
                    {
                        listBooks = Session[LIST_BOOKS] as List<Book>;
                    }
                    else
                    {
                        listBooks = BookRepository.ListRandomBook(pageNumber);
                    }

                    
                }
                else
                {
                    listBooks = BookRepository.ListRandomBook(pageNumber);
                }
            }
            else
            {
                listBooks = BookRepository.ListRandomBook(pageNumber);    
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
                Text = "Nouveautés",
                Value = "New"
            };

            listToReturn.Add(itemToAdd);

            itemToAdd = new SelectListItem
            {
                Text = "Populaires",
                Value = "Viral"
            };

            listToReturn.Add(itemToAdd);

            return listToReturn;
        }

        private static IEnumerable<SelectListItem> BuildSecondFilter()
        {
            List<SelectListItem> listToReturn = new List<SelectListItem>();

            SelectListItem itemToAdd = new SelectListItem
                {
                    Text = "Score",
                    Value = "Score"
                };

            listToReturn.Add(itemToAdd);

            itemToAdd = new SelectListItem
                {
                    Text = "Nouveau en premier",
                    Value = "Newer"
                };

            listToReturn.Add(itemToAdd);

            itemToAdd = new SelectListItem
            {
                Text = "Populaire",
                Value = "Popular"
            };

            listToReturn.Add(itemToAdd);

            return listToReturn;
        }

        #endregion

    }
}
