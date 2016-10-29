using AsTuLuWebProject.Database;

namespace AsTuLuWebProject.Models.Interfaces
{
    public interface IUserRepository
    {
        UserAccount GetUser(int userID);

        UserAccount GetUserByName(string userName);

        void CreateUser(string userName);

        void CreateUser(string userName, string role);

        bool UserExist(string username);
    }
}