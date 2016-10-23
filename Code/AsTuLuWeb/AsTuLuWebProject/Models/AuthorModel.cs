﻿using System;
using AsTuLuWebProject.Database;

namespace AsTuLuWebProject.Models
{
    public class AuthorModel
    {
        public int AuthorID { get; set; }
        public string AuthorName { get; set; }
        public DateTime DateAdded { get; set; }
        public int Score { get; set; }
        public DateTime? DateLastChecked { get; set; }
        public int TimesChecked { get; set; }

        public AuthorModel()
        {
            
        }

        public AuthorModel(Author dataAut)
        {
            AuthorID = dataAut.AuthorID;
            AuthorName = dataAut.Name;
            DateAdded = dataAut.DateAdded;
            Score = dataAut.Score;
            DateLastChecked = dataAut.LastTimeChecked;
            TimesChecked = dataAut.TimesConsulted;
        }
    }
}