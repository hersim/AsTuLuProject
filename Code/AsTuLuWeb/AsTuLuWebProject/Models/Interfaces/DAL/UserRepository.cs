﻿using System;
using System.Linq;
using AsTuLuWebProject.Database;

namespace AsTuLuWebProject.Models.Interfaces.DAL
{
    public class UserRepository: IUserRepository
    {
        private const string ADMIN = "Administrator";
        private const string REG = "Regular";

        public UserAccount GetUser(int userID)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                UserAccount userToReturn = context.UserAccount.FirstOrDefault(item => item.AccountID == userID);

                return userToReturn;    
            }
        }

        public UserAccount GetUserByName(string userName)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                UserAccount userToReturn = context.UserAccount.FirstOrDefault(item => item.UserAccountName == userName);

                return userToReturn;    
            }
            
        }

        public void CreateUser(string userName)
        {
            CreateUser(userName, REG);   
        }

        public void CreateUser(string userName, string role)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                UserAccount account = new UserAccount
                {
                    AccountScore = 0,
                    DateCreated = DateTime.Now,
                    DateLastLog = DateTime.Now,
                    Reputation = "Neutral",
                    UserAccountName = userName,
                };

                context.UserAccount.Add(account);

                context.SaveChanges();
            }
        }

        public bool UserExist(string username)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                return context.UserAccount.Any(item => item.UserAccountName == username);    
            }
            
        }

    }
}