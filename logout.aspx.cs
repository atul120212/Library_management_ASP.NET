using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;  

namespace TestGridView
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["id"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                Session.Clear();
                Session.Abandon();
                FormsAuthentication.SignOut();
                var authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, string.Empty) { Expires = DateTime.Now.AddYears(-1) };
                Response.Cookies.Add(authCookie);
                FormsAuthentication.RedirectToLoginPage(); 
                Session.Remove("username");
                Session.Remove("password");
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}