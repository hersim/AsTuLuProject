using System.Collections.Generic;
using AsTuLuWebProject_prog.Models;

namespace AsTuLuWebProject.Utilities.Containers
{
    public class BookContainer
    {
        public BookModel BookToShow { get; set; }

        public BookStatus BookRelationship { get; set; }

        public List<AuthorModel> ListAuthors { get; set; }

        public List<EditorModel> ListEditors { get; set; }
    }
}