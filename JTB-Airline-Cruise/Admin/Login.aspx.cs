﻿using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Validate the user password
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();

                // This doen't count login failures towards account lockout
                // To enable password failures to trigger lockout, change to shouldLockout: true
                var result = signinManager.PasswordSignIn(Email.Text, Password.Text, isPersistent: false, shouldLockout: false);

                switch (result)
                {
                    case SignInStatus.Success:
                        //IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                        Response.Redirect("../Admin/Dashboard.aspx");
                        break;
                    case SignInStatus.LockedOut:
                        Response.Redirect("/Account/Lockout");
                        break;
                    case SignInStatus.RequiresVerification:
                        Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
                                                        Request.QueryString["ReturnUrl"]),
                                          true);
                        break;
                    case SignInStatus.Failure:
                    default:
                        //FailureText.Text = "Invalid login attempt";
                        ErrorMessage.Visible = true;
                        break;
                }
            }
        }
    }
}