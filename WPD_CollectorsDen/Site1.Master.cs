using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WPD_CollectorsDen
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void login_link_Click(object sender, EventArgs e)
        {
            Page.Validate("signin_valid");
            HttpContext.Current.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            Response.Redirect("~/login/login.aspx");
            

        }
        protected void signout_link_Click(object sender, EventArgs e)
        {
            Page.Validate("logout_valid");
            HttpContext.Current.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            Response.Redirect("~/default.aspx");
            //LitLogoutResult.Text = "You have successfully logged out";

        }

        protected void Admin_Link_Click(object sender, EventArgs e)
        {
            Page.Validate("admin_link_valid");
            Response.Redirect("~/admin/welcome_admin.aspx");
        }
    }
}