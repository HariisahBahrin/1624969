using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using System.Data.SqlClient;

namespace WPD_CollectorsDen
{
    //The following codes are taken from Microsoft - Adding ASP.NET Identity to an Empty or Existing Web Forms Project which (Can be found here:https://docs.microsoft.com/en-us/aspnet/identity/overview/getting-started/adding-aspnet-identity-to-an-empty-or-existing-web-forms-project)
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        //The following codes for "btnlogin_Click" and "LogUserIn" are from Andrew's Tutorial - Authentication with ASP.NET Identity (Can be found here: http://tutorials.tinyappco.com/ASPNET/Identity)
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Page.Validate("one"); //Referred from Jakrahal's post on https://www.sitepoint.com/community/t/multiple-forms-on-one-aspx-page/4101
            var CollectorsDenContext = new IdentityDbContext("CollectorsDenConnection");
            var userStore = new UserStore<IdentityUser>(CollectorsDenContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtloginusername.Text, txtloginpassword.Text);
            if (user != null)
            {
                LitLoginResult.Text = "You have successfully logged in";
                
            }
            else
            {
                litLoginError.Text = "Invalid Username or Password. Please Try Again.";
            }

          }

        protected void UserLogIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);
            Response.Redirect("login.aspx");
        }

        protected void LogOut_click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("login.aspx");
        }

        //Registration starts here
        protected void btnregister_Click(object sender, EventArgs e)
        {
            Page.Validate("two");  //Referred from Jakrahal's post on https://www.sitepoint.com/community/t/multiple-forms-on-one-aspx-page/4101
            var CollectorsDenContext = new IdentityDbContext("CollectorsDenConnection");
            var userStore = new UserStore<IdentityUser>(CollectorsDenContext);
            var userManager = new UserManager<IdentityUser>(userStore);


            var roleStore = new RoleStore<IdentityRole>(CollectorsDenContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);


            var user = new IdentityUser() { UserName = txtusernamereg.Text, Email = txtEmail.Text };
            IdentityResult result = userManager.Create(user, txtpwdreg.Text);
            IdentityRole adminRole = new IdentityRole("user");
            roleManager.Create(adminRole);
            userManager.AddToRole(user.Id, "user");
            userManager.Update(user);

            var allRoles = roleManager.Roles;

            if (result.Succeeded)
            {
                StatusMessage.Text = string.Format("User {0} was created successfully!", user.UserName);
                txtFirstName.Text = String.Empty;
                txtLastName.Text = String.Empty;
                txtusernamereg.Text = String.Empty;
                txtpwdreg.Text = String.Empty;
                txtpwdreg2.Text = String.Empty;
                txtEmail.Text = String.Empty;
                txtEmail2.Text = String.Empty;
                txtPhoneNum.Text = String.Empty;
                txtAddress.Text = String.Empty;

            }
            else
            {
                litRegisterError2.Text = " An error has occurred: " + result.Errors.FirstOrDefault();
            }
        }

         

        protected void btnclear_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = String.Empty;
            txtLastName.Text = String.Empty;
            txtusernamereg.Text = String.Empty;
            txtpwdreg.Text = String.Empty;
            txtpwdreg2.Text = String.Empty;
            txtEmail.Text = String.Empty;
            txtEmail2.Text = String.Empty;
            txtPhoneNum.Text = String.Empty;
            txtAddress.Text = String.Empty;
        }

    }
}

