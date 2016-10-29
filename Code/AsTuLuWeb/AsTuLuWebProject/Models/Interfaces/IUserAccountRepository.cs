using System;
using System.Collections.Generic;
using AsTuLuWebProject.Database;

namespace AsTuLuWebProject.Models.Interfaces
{
    public interface IUserAccountRepository
    {
        List<UserAccount> ListUsers();

        List<UserAccount> ListHighestRankingUsers();

        UserAccount GetAccountByID(int accountID);

        void AddUser(UserAccount user);

        void DeleteUser(int userID);

        void UpdateUser(UserAccount userAccount);
    }
}