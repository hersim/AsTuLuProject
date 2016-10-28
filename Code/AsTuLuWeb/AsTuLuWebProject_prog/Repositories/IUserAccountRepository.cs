using System.Collections.Generic;
using AsTuLuWebProject_prog.Database;

namespace AsTuLuWebProject_prog.Repositories
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