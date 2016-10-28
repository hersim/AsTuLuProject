using System;
using AsTuLuWebProject_prog.Database;

namespace AsTuLuWebProject_prog.Models
{
    public class BookByUserModel
    {
        public BookByUserModel(BookByUser bookByUser)
        {
            BookByUserID = bookByUser.BookByUserID;
            BookID = bookByUser.BookID;
            UserID = bookByUser.UserID;
            LikeState = bookByUser.LikeState;
            DateCreated = bookByUser.DateCreated;
            DateModified = bookByUser.DateModified;
        }

        public int BookByUserID { get; set; }
        public int BookID { get; set; }
        public int UserID { get; set; }
        public int? LikeState { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime? DateModified { get; set; }

        public virtual BookModel Book { get; set; }
        public virtual UserAccountModel UserAccount { get; set; }
    }
}
