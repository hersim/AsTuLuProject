namespace AsTuLuWebProject_prog.Models
{
    public class CommentModel
    {
        public int CommentID { get; set; }
        public string CommentText { get; set; }
        public int AccountID { get; set; }
        public int ReviewID { get; set; }
        public System.DateTime DateAdded { get; set; }

        public virtual ReviewModel Review { get; set; }
        public virtual UserAccountModel UserAccount { get; set; }
    }
}
