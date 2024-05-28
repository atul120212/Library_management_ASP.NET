using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace TestGridView
{
    public partial class Signup : System.Web.UI.Page
    {
       
        DataSet ds = new DataSet();
        SqlConnection con;
        //Here we declare the parameter which we have to use in our application
        SqlCommand cmd = new SqlCommand();
        SqlParameter sp1 = new SqlParameter();
        SqlParameter sp2 = new SqlParameter();
        SqlParameter sp3 = new SqlParameter();
        SqlParameter sp4 = new SqlParameter();
        protected void Page_Load(object sender, EventArgs e) {
            if (Session["id"] == null || Session["role"].ToString() != "1")
            {
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
        }

        protected void Register(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True");
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into staff_register values(@username,@password,@repassword,@phone,@address,@designation)", con); // Pass connection object here
            cmd.Parameters.AddWithValue("@username", username.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);
            cmd.Parameters.AddWithValue("@repassword", repassword.Text);
            cmd.Parameters.AddWithValue("@phone", phone.Text);
            cmd.Parameters.AddWithValue("@address", address.Text);
            cmd.Parameters.AddWithValue("@designation", designation.SelectedValue);

            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                lblMessage.Text = "Registration successful!";
            }
            else
            {
                lblMessage.Text = "Registration failed. Please try again.";
            }

            username.Text = "";
            password.Text = "";
            repassword.Text = "";
            phone.Text = "";
            address.Text = "";
            designation.SelectedValue = "";
            username.Focus();

            con.Close();
            //cmd.ExecuteNonQuery();

            //username.Text = "";
            //password.Text = "";
            //repassword.Text = "";
            //phone.Text = "";
            //address.Text = "";
            //designation.SelectedValue = "";
            //username.Focus();

            //con.Close(); 

        }

    }
}