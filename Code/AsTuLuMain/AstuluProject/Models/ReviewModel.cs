using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AstuluProject.Models
{
    public class ReviewModel
    {
        public int ReviewID { get; set; }

        public string Text { get; set; }

        public int UserID { get; set; }

        public UserModel User { get; set; }

        public int BookID { get; set; }

        public BookModel Book { get; set; }

        public List<CommentModel> ListComments { get; set; }
    }
}