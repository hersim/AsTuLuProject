using System;
using AstuluProject.Models.Database;

namespace AstuluProject.Models.Interfaces
{
    public interface IUserRepository : IDisposable
    {
        UserAccount GetUser(int _userID);

        UserAccount GetUserByName(string _userName);
    }
}