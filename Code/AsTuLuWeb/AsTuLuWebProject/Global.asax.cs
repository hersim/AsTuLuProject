using System.Globalization;
using System.Threading;
using System.Web.Helpers;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using AsTuLuWebProject.App_Start;
using AsTuLuWebProject.Database;
using AsTuLuWebProject.Models;
using AsTuLuWebProject.Models.Interfaces;
using AsTuLuWebProject.Models.Interfaces.DAL;
using Microsoft.Web.WebPages.OAuth;
using WebMatrix.WebData;

namespace AsTuLuWebProject
{
    // Note: For instructions on enabling IIS6 or IIS7 classic mode, 
    // visit http://go.microsoft.com/?LinkId=9394801

    public class MvcApplication : System.Web.HttpApplication
    {
        //private static SimpleMembershipInitializer mInitializer;
        //private static object mInitializerLock = new object();
        //private static bool mIsInitialized;

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            WebApiConfig.Register(GlobalConfiguration.Configuration);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            AuthConfig.RegisterAuth();

            WebSecurityInitializer.Instance.EnsureInitialize();
        }

        protected void Application_BeginRequest()
        {
            var ci = CultureInfo.GetCultureInfo("en-US");

            if (Thread.CurrentThread.CurrentCulture.DisplayName == ci.DisplayName)
            {
                ci = CultureInfo.CreateSpecificCulture("en-US");
                ci.NumberFormat.CurrencyNegativePattern = 1;
                Thread.CurrentThread.CurrentCulture = ci;
                Thread.CurrentThread.CurrentUICulture = ci;
            }
        }
    }

    public class WebSecurityInitializer
    {
        private WebSecurityInitializer() { }

        public static readonly WebSecurityInitializer Instance = new WebSecurityInitializer();

        private IUserRepository UserRepository = new UserRepository();

        private bool isNotInit = true;

        private readonly object SyncRoot = new object();

        private const string USERNAME = "Herve";
        private const string PASSWORD = "password123";
        private const string ADMIN = "Administrator";
        private const string USER = "User";

        public void EnsureInitialize()
        {
            using (AsTuLusEntities database = new AsTuLusEntities())
            {
                database.Database.Connection.Open();

                if (isNotInit)
                {
                    lock (SyncRoot)
                    {
                        if (isNotInit)
                        {
                            isNotInit = false;

                            WebSecurity.InitializeDatabaseConnection("AsTuLusEntities_ADO", "UserProfile", "UserId", "UserName", true);

                            if (!WebSecurity.UserExists(USERNAME))
                            {
                                WebSecurity.CreateUserAndAccount(USERNAME, PASSWORD);

                                OAuthWebSecurity.CreateOrUpdateAccount("AsTuLu", "AsTuLu", USERNAME);
                            }

                            if (!Roles.RoleExists(ADMIN))
                            {
                                Roles.CreateRole(ADMIN);
                            }

                            if (!Roles.RoleExists(USER))
                            {
                                Roles.CreateRole(USER);
                            }

                            if (!Roles.IsUserInRole(USERNAME, ADMIN))
                            {
                                Roles.AddUserToRole(USERNAME, ADMIN);
                            }

                            if (!UserRepository.UserExist(USERNAME))
                            {
                                UserRepository.CreateUser(USERNAME, ADMIN);
                            }
                        }
                    }
                }
            }

        }
    }
}