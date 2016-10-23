using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AstuluProject.Models
{
    public class EditorModel
    {
        public int EditorID { get; set; }

        public string Name { get; set; }

        public DateTime? DateCreated { get; set; }

        public List<BookModel> ListBooks { get; set; }
    }
}