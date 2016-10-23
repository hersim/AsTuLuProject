using System.Web;
using System.Web.Security;
using AstuluProject.Filters;
using AstuluProject.Models.Interfaces;
using AstuluProject.Utilities;
using WebMatrix.WebData;

[assembly: PreApplicationStartMethod(typeof(PreApplicationTasks), "Initializer")]
namespace AstuluProject.Utilities
{
    public class WebSecurityInitializer
    {
        private WebSecurityInitializer() { }
        public static readonly WebSecurityInitializer Instance = new WebSecurityInitializer();

        //private static IUserAccountRepository mUserAccountRepository;

        private bool isNotInit = true;

        private readonly object SyncRoot = new object();

        public void EnsureInitialize()
        {
            if (isNotInit)
            {
                lock (SyncRoot)
                {
                    if (isNotInit)
                    {
                        isNotInit = false;

                        WebSecurity.InitializeDatabaseConnection("AstulusEntities_ADO", userTableName:"Users", userIdColumn:"UserID", userNameColumn: "UserName", autoCreateTables:true);
                    }
                }
            }
        }
    }

    public static class PreApplicationTasks
    {
        public static void Initializer()
        {
            Microsoft.Web.Infrastructure.DynamicModuleHelper.DynamicModuleUtility
                .RegisterModule(typeof(UserInitializationModule));
        }
    }

    public class UserInitializationModule : IHttpModule
    {
        private static bool Initialized;
        private static readonly object LockObject = new object();

        private const string USERNAME = "Owner";
        private const string PASSWORD = "password123";
        private const string ROLE = "Admin";
        private const string USER_ROLE = "User";

        void IHttpModule.Init(HttpApplication context)
        {
            lock (LockObject)
            {
                if (!Initialized)
                {
                    new InitializeSimpleMembershipAttribute().OnActionExecuting(null);

                    if (!WebSecurity.UserExists(USERNAME))
                    {
                        WebSecurity.CreateUserAndAccount(USERNAME, PASSWORD);
                    }
                        
                    if (!Roles.RoleExists(ROLE))
                    {
                        Roles.CreateRole(ROLE);
                    }

                    if (!Roles.IsUserInRole(USERNAME, ROLE))
                    {
                        Roles.AddUserToRole(USERNAME, ROLE);
                    }

                    if (!Roles.RoleExists(USER_ROLE))
                    {
                        Roles.CreateRole(USER_ROLE);
                    }

                }
                Initialized = true;
            }
        }

        void IHttpModule.Dispose() { }
    }
}