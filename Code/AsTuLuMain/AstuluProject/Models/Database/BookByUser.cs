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
    
    public partial class BookByUser
    {
        public int BookByUserID { get; set; }
        public int BookID { get; set; }
        public int UserID { get; set; }
        public Nullable<int> LikeState { get; set; }
        public System.DateTime DateCreated { get; set; }
        public Nullable<System.DateTime> DateModified { get; set; }
    
        public virtual Book Book { get; set; }
        public virtual UserAccount UserAccount { get; set; }
    }
}
