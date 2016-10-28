using System;
using System.Collections.Generic;
using AsTuLuWebProject_prog.Database;

namespace AsTuLuWebProject_prog.Models
{
    public class EditorModel
    {
        public EditorModel(Editor editor)
        {
            EditorID = editor.EditorID;
            EditorName = editor.EditorName;
            DateCreated = editor.DateCreated;
            EditorScore = editor.EditorScore;
            DateAdded = editor.DateAdded;
            TimeEditorConsulted = editor.TimeEditorConsulted;
        }

        public int EditorID { get; set; }
        public string EditorName { get; set; }
        public DateTime? DateCreated { get; set; }
        public int EditorScore { get; set; }
        public System.DateTime DateAdded { get; set; }
        public int TimeEditorConsulted { get; set; }

        public ICollection<BookByEditorModel> BookByEditor { get; set; }
    }
}
