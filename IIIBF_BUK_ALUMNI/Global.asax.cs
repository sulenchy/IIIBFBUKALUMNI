using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Data.Entity;
using IIIBF_BUK_ALUMNI.Models;
using IIIBF_BUK_ALUMNI.Logic;


namespace IIIBF_BUK_ALUMNI
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            //DATABASE INITIALIZER
            Database.SetInitializer(new AppDatabaseInitializer());


            // Create the administrator role and user. 
            RoleActions roleActions = new RoleActions();
            roleActions.createAdmin();
            roleActions.createMember("dauda@buhari.com", "123456");
        }


        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs.
            // Get last error from the server 
            Exception exc = Server.GetLastError();
            if (exc is HttpUnhandledException)
            {
                if (exc.InnerException != null)
                {
                    exc = new Exception(exc.InnerException.Message);
                    Server.Transfer("ErrorPage.aspx?handler=Application_Error%20-%20Global.asax", true);

                }

            }

        }

    }
}