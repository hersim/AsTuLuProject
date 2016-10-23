using System;
using System.Collections.Generic;
using System.Linq;
using AstuluProject.Models.Database;

namespace AstuluProject.Models.Interfaces.DAL
{
    public class BookRelationshipRepository : IBookRelationshipRepository
    {
        private static AsTuLusEntities DbContext;

        private bool Disposed;

        public BookRelationshipRepository(AsTuLusEntities context)
        {
            DbContext = context;

            Disposed = false;
        }

        public BookByUser GetRelationshipForBookAndUser(int _bookID, int userAccountID)
        {
            BookByUser itemToReturn = DbContext.BookByUser.FirstOrDefault(item => item.BookID == _bookID && item.UserID == userAccountID);

            return itemToReturn;
        }

        public List<BookByUser> ListBookRelationshipsForUser(int userAccountID) 
        {
            List<BookByUser> listBookRelationships = DbContext.BookByUser.Where(item => item.UserID == userAccountID).ToList();

            return listBookRelationships;
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!this.Disposed)
            {
                if (disposing)
                {
                    DbContext.Dispose();
                }
            }

            this.Disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}