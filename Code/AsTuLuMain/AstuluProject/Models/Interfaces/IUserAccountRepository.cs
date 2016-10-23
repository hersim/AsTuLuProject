using System;
using System.Collections.Generic;
using AstuluProject.Models.Database;

namespace AstuluProject.Models.Interfaces
{
    public interface IUserAccountRepository : IDisposable
    {
        List<UserAccount> ListUsers();

        List<UserAccount> ListHighestRankingUsers();

        UserAccount GetAccountByID(int accountID);

        void AddUser(UserAccount user);

        void DeleteUser(int userID);

        void UpdateUser(UserAccount userAccount);
    }
}