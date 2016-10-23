using System;
using System.Collections.Generic;
using AstuluProject.Models.Database;

namespace AstuluProject.Models.Interfaces
{
    public interface IBookRelationshipRepository : IDisposable
    {
        BookByUser GetRelationshipForBookAndUser(int _bookID, int userAccountID);

        List<BookByUser> ListBookRelationshipsForUser(int userAccountID);
    }
}