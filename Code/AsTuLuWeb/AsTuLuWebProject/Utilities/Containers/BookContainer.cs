using System.Collections.Generic;
using AsTuLuWebProject.Database;
using AsTuLuWebProject.Models;

namespace AsTuLuWebProject.Utilities.Containers
{
    public class BookContainer
    {
        public Book BookToShow { get; set; }

        public BookStatus BookRelationship { get; set; }

        public List<AuthorModel> ListAuthors { get; set; }

        public List<EditorModel> ListEditors { get; set; }
    }
}