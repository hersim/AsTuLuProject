using System;
using System.Collections.Generic;
using AsTuLuWebProject.Database;

namespace AsTuLuWebProject.Models
{
    public class EditorModel
    {
        public int EditorID { get; set; }

        public string Name { get; set; }

        public DateTime? DateCreated { get; set; }

        public int EditorScore { get; set; }

        public DateTime DateAdded { get; set; }

        public int TimesChecked { get; set; }

        public List<BookModel> ListBooks { get; set; }

        public EditorModel()
        {
            
        }

        public EditorModel(Editor dataEd)
        {
            EditorID = dataEd.EditorID;
            Name = dataEd.EditorName;
            DateAdded = dataEd.DateAdded;
            DateCreated = dataEd.DateCreated;
            EditorScore = dataEd.EditorScore;
            TimesChecked = dataEd.TimeEditorConsulted;
        }
    }
}