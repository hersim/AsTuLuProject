using System;
using System.Collections.Generic;

namespace AstuluProject.Models.Interfaces
{
    interface IAuthorRepository : IDisposable
    {
        List<AuthorModel> ListAuthors();


    }
}
