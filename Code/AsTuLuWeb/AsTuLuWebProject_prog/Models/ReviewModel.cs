using System.Collections.Generic;
using AsTuLuWebProject_prog.Database;

namespace AsTuLuWebProject_prog.Models
{
    public class ReviewModel
    {
        public ReviewModel(Review review)
        {
            ReviewID = review.ReviewID;
            ReviewText = review.ReviewText;
            AccountID = review.AccountID;
            BookID = review.BookID;
            ReviewScore = review.ReviewScore;
            DateAdded = review.DateAdded;
        }

        public int ReviewID { get; set; }
        public string ReviewText { get; set; }
        public int AccountID { get; set; }
        public int BookID { get; set; }
        public int ReviewScore { get; set; }
        public System.DateTime DateAdded { get; set; }

        public BookModel Book { get; set; }
        public ICollection<CommentModel> Comment { get; set; }
        public UserAccountModel UserAccount { get; set; }
    }
}
