//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AstuluProject.Models.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class UserAccount
    {
        public UserAccount()
        {
            this.BookByUser = new HashSet<BookByUser>();
            this.Comment = new HashSet<Comment>();
            this.Review = new HashSet<Review>();
            this.UserFavorites = new HashSet<UserFavorites>();
        }
    
        public int AccountID { get; set; }
        public System.DateTime DateCreated { get; set; }
        public Nullable<System.DateTime> DateLastLog { get; set; }
        public string UserAccountName { get; set; }
        public int AccountScore { get; set; }
        public string Reputation { get; set; }
        public Nullable<int> UserID { get; set; }
        public Nullable<int> UserFavoritesID { get; set; }
    
        public virtual ICollection<BookByUser> BookByUser { get; set; }
        public virtual ICollection<Comment> Comment { get; set; }
        public virtual ICollection<Review> Review { get; set; }
        public virtual ICollection<UserFavorites> UserFavorites { get; set; }
    }
}
