﻿using System.Threading;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using AstuluProject.Models;
using WebMatrix.WebData;

namespace AstuluProject
{
    // Note: For instructions on enabling IIS6 or IIS7 classic mode, 
    // visit http://go.microsoft.com/?LinkId=9394801

    public class MvcApplication : HttpApplication
    {
        private static SimpleMembershipInitializer mInitializer;
        private static object mInitializerLock = new object();
        private static bool mIsInitialized;

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            WebApiConfig.Register(GlobalConfiguration.Configuration);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            AuthConfig.RegisterAuth();

            LazyInitializer.EnsureInitialized(ref mInitializer, ref mIsInitialized, ref mInitializerLock);
        }

        public class SimpleMembershipInitializer
        {
            public SimpleMembershipInitializer()
            {
                using (UsersContext context = new UsersContext())
                {
                    //context.UserProfiles.Find(1);

                    if (!WebSecurity.Initialized)
                    {
                        WebSecurity.InitializeDatabaseConnection("AsTuLusEntities_ADO", "UserProfile", "UserId", "UserName", true);
                    }
                }

            }
        }
    }
}