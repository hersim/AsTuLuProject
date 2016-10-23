using System;
using System.Collections.Generic;
using System.Linq;
using AstuluProject.Models.Database;
using AstuluProject.Models.Interfaces;

namespace AstuluProject.Models.Interfaces.DAL
{
    public class UserAccountRepository : IUserAccountRepository
    {
        private readonly AsTuLusEntities DbContext;

        private readonly IUserRepository UserRepository;

        private bool Disposed;

        public UserAccountRepository(AsTuLusEntities context)
        {
            DbContext = context;

            UserRepository = new UserRepository(context);
        }

        public List<UserAccount> ListUsers()
        {
            List<UserAccount> listUsers = DbContext.UserAccount.ToList();

            //foreach (UserAccount userAccount in listUsers)
            //{
            //    userAccount.User = UserRepository.GetUser((int)userAccount.UserID);
            //}

            return listUsers;
        }

        public List<UserAccount> ListHighestRankingUsers()
        {
            return DbContext.UserAccount.OrderBy(_x => _x.AccountScore).ToList();
        }

        public UserAccount GetAccountByID(int accountID)
        {
            UserAccount account = DbContext.UserAccount.First(user => user.AccountID == accountID);

            return account;
        }

        public void AddUser(UserAccount user)
        {
            DbContext.UserAccount.Add(user);
        }

        public void DeleteUser(int userID)
        {
            UserAccount accountToDelete = GetAccountByID(userID);

            DbContext.UserAccount.Remove(accountToDelete);
        }

        public void UpdateUser(UserAccount userAccount)
        {
            UserAccount accountToUpdate = GetAccountByID(userAccount.AccountID);

            userAccount.AccountID = accountToUpdate.AccountID;

            DbContext.Entry(accountToUpdate).CurrentValues.SetValues(userAccount);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!this.Disposed)
            {
                if (disposing)
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