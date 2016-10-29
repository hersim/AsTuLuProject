using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AsTuLuWebProject.Models
{
    public class CommentModel
    {
        public int CommentID { get; set; }

        public string Text { get; set; }

        public int UserID { get; set; }

        public UserModel User { get; set; }

        public int ReviewID { get; set; }

        public ReviewModel Review { get; set; }
    }
}