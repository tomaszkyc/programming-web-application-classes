using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication1
{
    public partial class Global : System.Web.HttpApplication
    {


        protected void Application_Start(object sender, EventArgs e)
        {
            Application["userCount"] = 0;
            Application["activeUserCount"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            int userCount = (int)Application["userCount"];
            userCount++;
            Application["userCount"] = userCount;
            int activeUserCount = (int)Application["activeUserCount"];
            activeUserCount++;
            Application["activeUserCount"] = activeUserCount;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            int activeUserCount = (int)Application["activeUserCount"];
            activeUserCount--;
            Application["activeUserCount"] = activeUserCount;
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}