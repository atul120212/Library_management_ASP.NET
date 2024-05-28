using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TestGridView
{
    public partial class update_data : System.Web.UI.Page
    {
        public SqlConnection con = new SqlConnection("Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null || Session["role"].ToString() != "1")
            {
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                load();
            }
        }
        void load()
        {
            string str = "select * from books";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            

            if (e.CommandName.Equals("ADD"))
            {
                FileUpload fl1 = (FileUpload)GridView1.FooterRow.FindControl("FileUpload2");
                string img_path = "~/uploads/" + fl1.FileName;
                fl1.SaveAs(Server.MapPath(img_path));
                //TextBox TextBox1 = (TextBox)GridView1.FooterRow.FindControl("txtaddbid");
                TextBox TextBox2 = (TextBox)GridView1.FooterRow.FindControl("txtaddname");
                TextBox TextBox3 = (TextBox)GridView1.FooterRow.FindControl("txtaddauthor");

                string str = "insert into books values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + img_path + "')";
                SqlCommand cmd = new SqlCommand(str, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                load();

            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label Label1 = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            con.Open();
            string cmdstr = "delete books where Id ='" + Label1.Text + "'";
            SqlCommand cmd = new SqlCommand(cmdstr, con);
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            load();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label Label1 = (Label)GridView1.Rows[e.RowIndex].FindControl("Label2");
            TextBox TextBox2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txteditname");
            TextBox TextBox3 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txteditauthor");
            FileUpload fl1 = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1");
            string img_path = "~/uploads/" + fl1.FileName;
            fl1.SaveAs(Server.MapPath(img_path));

            con.Open();

            string cmdstr = "update books set bookName='" + TextBox2.Text + "',author='" + TextBox3.Text + "',myimg='" + img_path + "' where Id='" + Label1.Text + "'";
            SqlCommand cmd = new SqlCommand(cmdstr, con);
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            load();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            load();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            load();
        }
    }
}