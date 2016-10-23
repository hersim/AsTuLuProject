using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using AsTuLuWebProject.Database;

namespace AsTuLuWebProject.Models.Interfaces.DAL
{
    public class UserAccountRepository : IUserAccountRepository
    {
        private readonly IUserRepository UserRepository;

        public UserAccountRepository()
        {
        }

        public List<UserAccount> ListUsers()
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                List<UserAccount> listUsers = context.UserAccount.ToList();

                return listUsers;    
            }
        }

        public List<UserAccount> ListHighestRankingUsers()
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                return context.UserAccount.OrderBy(_x => _x.AccountScore).ToList();    
            }
            
        }

        public UserAccount GetAccountByID(int accountID)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                UserAccount account = context.UserAccount.First(user => user.AccountID == accountID);

                return account;    
            }
            
        }

        public void AddUser(UserAccount user)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                context.UserAccount.Add(user);

                context.SaveChanges();
            }
            
        }

        public void DeleteUser(int userID)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                UserAccount accountToDelete = GetAccountByID(userID);

                context.UserAccount.Remove(accountToDelete);

                context.Entry(accountToDelete).State = EntityState.Deleted;

                context.SaveChanges();
            }
        }

        public void UpdateUser(UserAccount userAccount)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                UserAccount accountToUpdate = GetAccountByID(userAccount.AccountID);

                userAccount.AccountID = accountToUpdate.AccountID;

                context.Entry(accountToUpdate).CurrentValues.SetValues(userAccount);
    
                context.Entry(accountToUpdate).State = EntityState.Modified;

                context.SaveChanges();
            }
            
        }

    }
}