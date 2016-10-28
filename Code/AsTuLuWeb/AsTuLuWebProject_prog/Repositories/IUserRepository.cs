using AsTuLuWebProject_prog.Database;

namespace AsTuLuWebProject_prog.Repositories
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