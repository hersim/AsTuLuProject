using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AsTuLuWebProject.Models
{
    public class UserModel
    {
        public int UserID { get; set; }

        public string Name { get; set; }

        public string Password { get; set; }

        public DateTime DateCreated { get; set; }

        public DateTime DateLastSeen { get; set; }

        public int Score { get; set; }

        public List<CommentModel> ListComments { get; set; }

        public List<ReviewModel> ListReviews { get; set; }
    }
}