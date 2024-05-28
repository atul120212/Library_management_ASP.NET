using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace TestGridView
{
    public partial class ImageUplaod : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string constr = "Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True";
                using (SqlConnection conn = new SqlConnection(constr))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM books", conn))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        gvImages.DataSource = dt;
                        gvImages.DataBind();
                    }
                }
            }
        }



        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;

                string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["Data"]);
                (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;
            }
        }

        



        protected void AddBook(object sender, EventArgs e)
        {
            string str = fuUpload.FileName;
            fuUpload.PostedFile.SaveAs(Server.MapPath("uploads/" + str));
            string Image = "uploads/" + str.ToString();
            string name = lblMessage.Text;

            SqlConnection con = new SqlConnection("Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True");
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into books values(@bookName,@author,@myimg)", con); // Pass connection object here
            cmd.Parameters.AddWithValue("@bookName", bookName.Text);
            cmd.Parameters.AddWithValue("@author", author.Text);
            cmd.Parameters.AddWithValue("@myimg", Image);


            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                lblMessage.Text = "Book Added successfully!";
            }
            else
            {
                lblMessage.Text = "Book Addition failed. Please try again.";
            }

            bookName.Text = "";
            author.Text = "";
            bookName.Focus();

            con.Close();

            lblMessage.Text = "Image Uploaded";
            lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
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