using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TestGridView
{
    public partial class Login : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }
       
        protected void btnSumbit(object sender, EventArgs e)
        {
            string email = username.Text;
            string pass = password.Text;
            string msg = scalarReturn("select count(*) from staff_register where username='"+email+"' and password='"+pass+"'");

            if (msg.Equals("0"))
            {
                Response.Write("<script> alert('Invalid username and password')</script>");
            }
            else
            {
                Session["id"] = scalarReturn("select Id from staff_register where username='" + email + "' and password='" + pass + "'");
                msg = scalarReturn("select designation from staff_register where username='"+email+"' and password='"+pass+"'");
                if (msg.Equals("1"))
                {
                    Session["role"] = msg;
                    Session["username"] = username.Text;
                    Response.Redirect("welcome.aspx");
                    
                }
                else if (msg.Equals("2"))
                {
                    Session["role"] = msg;
                    Session["username"] = username.Text;
                    Response.Redirect("welcome_user.aspx");
                    
                }
                else
                {
                    Session.RemoveAll();
                    Session.Abandon();
                    Response.Redirect("Login.aspx");
                }
            }


            
        }
        public string scalarReturn(string q)
        {
            SqlConnection con = new SqlConnection("Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True");
            con.Open();
            SqlCommand cmd = new SqlCommand(q, con);
            string s = cmd.ExecuteScalar().ToString();
            return s;
        }
        protected void clear(object sender, EventArgs e)
        {
            username.Text = "";
            password.Text = "";
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {

        }
    }
}
