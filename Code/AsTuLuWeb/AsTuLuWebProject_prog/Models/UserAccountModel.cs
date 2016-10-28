using System;
using System.Collections.Generic;

namespace AsTuLuWebProject_prog.Models
{
    public class UserAccountModel
    {

        public int AccountID { get; set; }
        public System.DateTime DateCreated { get; set; }
        public DateTime? DateLastLog { get; set; }
        public string UserAccountName { get; set; }
        public int AccountScore { get; set; }
        public string Reputation { get; set; }
        public int? UserID { get; set; }
        public int? UserFavoritesID { get; set; }

        public virtual ICollection<BookByUserModel> BookByUser { get; set; }
        public virtual ICollection<CommentModel> Comment { get; set; }
        public virtual ICollection<ReviewModel> Review { get; set; }
        public virtual ICollection<UserFavoritesModel> UserFavorites { get; set; }
    }
}
