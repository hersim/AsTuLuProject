using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AstuluProject.Models.Database;

namespace AstuluProject.Models.Interfaces.DAL
{
    public class AuthorRepository: IAuthorRepository, IDisposable
    {
        private AsTuLusEntities Context;

        private BookRepository mBookRepository { get; set; }

        private bool Disposed;

        public AuthorRepository(AsTuLusEntities context)
        {
            Context = context;
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!this.Disposed)
            {
                if (disposing)
                {
                    Context.Dispose();
                }
            }
            this.Disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        public List<AuthorModel> ListAuthors()
        {
            return new List<AuthorModel>(Context.Author.Select(item => ToModel(item)));
        }

        private AuthorModel ToModel(Author author)
        {
            AuthorModel authorToReturn =  new AuthorModel
                                        {
                                            AuthorID = author.AuthorID,
                                            Name = author.Name,
                                            DateAdded = author.DateAdded,
                                            Score = author.Score
                                        };

            authorToReturn.ListBooks = mBookRepository.ListBooksByAuthor(authorToReturn.AuthorID);

            return authorToReturn;
        }
    }
}