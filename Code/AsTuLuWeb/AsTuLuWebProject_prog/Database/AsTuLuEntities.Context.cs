﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class AsTuLusEntities : DbContext
    {
        public AsTuLusEntities()
            : base("name=AsTuLusEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Author> Author { get; set; }
        public DbSet<AuthorByBook> AuthorByBook { get; set; }
        public DbSet<Book> Book { get; set; }
        public DbSet<BookByEditor> BookByEditor { get; set; }
        public DbSet<BookByUser> BookByUser { get; set; }
        public DbSet<Category> Category { get; set; }
        public DbSet<Comment> Comment { get; set; }
        public DbSet<Editor> Editor { get; set; }
        public DbSet<Review> Review { get; set; }
        public DbSet<SubCategory> SubCategory { get; set; }
        public DbSet<UserAccount> UserAccount { get; set; }
        public DbSet<UserFavorites> UserFavorites { get; set; }
        public DbSet<UserProfile> UserProfile { get; set; }
        public DbSet<webpages_Membership> webpages_Membership { get; set; }
        public DbSet<webpages_OAuthMembership> webpages_OAuthMembership { get; set; }
        public DbSet<webpages_Roles> webpages_Roles { get; set; }
    }
}