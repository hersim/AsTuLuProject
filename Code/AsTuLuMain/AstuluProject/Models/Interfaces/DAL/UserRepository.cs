using System;
using System.Linq;
using AstuluProject.Models.Database;

namespace AstuluProject.Models.Interfaces.DAL
{
    public class UserRepository: IUserRepository
    {
        private readonly AsTuLusEntities DbContext;

        private bool Disposed;

        public UserRepository(AsTuLusEntities _context)
        {
            DbContext = _context;
        }

        public UserAccount GetUser(int accountID)
        {
            UserAccount userToReturn = DbContext.UserAccount.FirstOrDefault(item => item.AccountID == accountID);

            return userToReturn;
        }

        public UserAccount GetUserByName(string _userName)
        {
            UserAccount userToReturn = DbContext.UserAccount.FirstOrDefault(item => item.UserAccountName == _userName);

            return userToReturn;
        }

        protected virtual void Dispose(bool _disposing)
        {
            if (!this.Disposed)
            {
                if (_disposing)
                {
                    DbContext.Dispose();
                }

                this.Disposed = true;
            }
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}