using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace TestGridView
{
    public partial class edit_data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null && Session["designation"] != "1")
            {
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                GetBookDetail();
            }
        }
        private SqlConnection GetConnection()
        {
            SqlConnection con = new SqlConnection("Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True");

            con.Open();
            return con;
        }


        private void GetBookDetail()
        {
            SqlConnection con = GetConnection();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("_sp_GetBookDetail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
                IDataReader dr = cmd.ExecuteReader();
                dt.Load(dr);
            }
            else
            {
                IDataReader dr = cmd.ExecuteReader();
                dt.Load(dr);
            }
            gvBook.DataSourceID = null;
            gvBook.DataSource = dt;
            gvBook.DataBind();
            con.Close();
        }



        protected void gvBook_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(gvBook.DataKeys[e.RowIndex].Value.ToString());
            SqlConnection con = GetConnection();
            SqlCommand cmd = new SqlCommand("_sp_DeleteBook", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", id);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.ExecuteNonQuery();
            GetBookDetail();
        }



        protected void gvBook_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvBook.EditIndex = e.NewEditIndex;
            GetBookDetail();
        }




        protected void gvBook_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvBook.EditIndex = -1;
            GetBookDetail();
        }

        protected void gvBook_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int Id = Convert.ToInt32(gvBook.DataKeys[e.RowIndex].Value.ToString());
            string bookName = ((TextBox)gvBook.Rows[e.RowIndex].FindControl("bookName")).Text;
            string author = ((TextBox)gvBook.Rows[e.RowIndex].FindControl("author")).Text;
            FileUpload fl = (FileUpload)gvBook.FooterRow.FindControl("FileUpload1");
            //string myimg = ((TextBox)gvBook.Rows[e.RowIndex].FindControl("myimg")).Text;

            SqlConnection con = GetConnection();
            string path = "~/uploads/" + fl.FileName;
            fl.SaveAs(Server.MapPath(path));
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            

            SqlCommand cmd = new SqlCommand("_sp_UpdateBook" + path, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id ", Id);
            cmd.Parameters.AddWithValue("@bookName ", bookName);
            cmd.Parameters.AddWithValue("@author", author);
            cmd.Parameters.AddWithValue("@myimg", fl);
            cmd.ExecuteNonQuery();
            con.Close();
            gvBook.EditIndex = -1;// no row in edit mode  
            GetBookDetail();
        }

        protected void gvBook_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
















    }
}