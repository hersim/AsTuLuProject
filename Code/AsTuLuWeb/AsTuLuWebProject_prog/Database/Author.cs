//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AsTuLuWebProject_prog.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class Author
    {
        public Author()
        {
            this.AuthorByBook = new HashSet<AuthorByBook>();
        }
    
        public int AuthorID { get; set; }
        public string Name { get; set; }
        public System.DateTime DateAdded { get; set; }
        public int Score { get; set; }
        public int TimesConsulted { get; set; }
        public Nullable<System.DateTime> LastTimeChecked { get; set; }
    
        public virtual ICollection<AuthorByBook> AuthorByBook { get; set; }
    }
}