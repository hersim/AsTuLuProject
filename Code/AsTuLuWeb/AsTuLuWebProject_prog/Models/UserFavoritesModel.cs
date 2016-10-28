namespace AsTuLuWebProject_prog.Models
{
    public class UserFavoritesModel
    {
        public int UserFavoritesID { get; set; }
        public int BookID { get; set; }
        public int UserID { get; set; }
        public System.DateTime DateAdded { get; set; }

        public virtual UserAccountModel UserAccount { get; set; }
    }
}
