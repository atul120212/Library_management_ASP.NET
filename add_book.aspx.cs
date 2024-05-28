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
using System.IO;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace TestGridView
{

    public partial class add_book : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        SqlConnection con;
        //Here we declare the parameter which we have to use in our application
        SqlCommand cmd = new SqlCommand();
        SqlParameter sp1 = new SqlParameter();
        SqlParameter sp2 = new SqlParameter();
        SqlParameter sp3 = new SqlParameter();
        SqlParameter sp4 = new SqlParameter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null || Session["role"].ToString() != "1")
            {
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
            //if (!this.IsPostBack)
            //{
            //    string constr = "Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True";
            //    using (SqlConnection conn = new SqlConnection(constr))
            //    {
            //        using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM books", conn))
            //        {
            //            DataTable dt = new DataTable();
            //            sda.Fill(dt);
            //            gvImages.DataSource = dt;
            //            gvImages.DataBind();
            //        }
            //    }
            //}
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["Data"]);
                (e.Row.FindControl("gvImages") as Image).ImageUrl = imageUrl;
            }
        }

        protected void AddBook(object sender, EventArgs e)
        {

            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("uploads/" + str));
            string Image = "uploads/" + str.ToString();
            //string name = TextBox1.Text;

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

            Label1.Text = "Image Uploaded";
            Label1.ForeColor = System.Drawing.Color.ForestGreen;
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/uploads/" + str));
                string Image = "~/uploads/" + Path.GetFileName(FileUpload1.FileName);
                //string name = TextBox1.Text;

                SqlConnection con = new SqlConnection("Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True");
                SqlCommand cmd = new SqlCommand("insert into books values(@bookName,@author,@myimg)", con);
                cmd.Parameters.AddWithValue("@bookName", bookName);
                cmd.Parameters.AddWithValue("@author", author);
                con.Open();
                

                Label1.Text = "Image Uploaded";
                Label1.ForeColor = System.Drawing.Color.ForestGreen;
                cmd.ExecuteNonQuery();
                con.Close();
            }

            else
            {
                Label1.Text = "Please Upload your Image";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }  































        //protected void Upload(object sender, EventArgs e)
        //{
        //    byte[] bytes;
        //    using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
        //    {
        //        bytes = br.ReadBytes(FileUpload1.PostedFile.ContentLength);
        //    }

        //    string constr = "Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True";
        //    using (SqlConnection conn = new SqlConnection(constr))
        //    {
        //        string sql = "INSERT INTO books VALUES(@bookName, @author, @myimg)";
        //        using (SqlCommand cmd = new SqlCommand(sql, conn))
        //        {
        //            cmd.Parameters.AddWithValue("@bookName", Path.GetFileName(FileUpload1.PostedFile.FileName));
        //            cmd.Parameters.AddWithValue("@author", FileUpload1.PostedFile.ContentType);
        //            cmd.Parameters.AddWithValue("@myimg", FileUpload1.PostedFile.ContentType);
        //            conn.Open();


        //            int rowsAffected = cmd.ExecuteNonQuery();

        //            if (rowsAffected > 0)
        //            {
        //                lblMessage.Text = "Book Added successfully!";
        //            }
        //            else
        //            {
        //                lblMessage.Text = "Book Addition failed. Please try again.";
        //            }

        //            bookName.Text = "";
        //            author.Text = "";
        //            bookName.Focus();



        //            lblMessage.Text = "Image Uploaded";
        //            lblMessage.ForeColor = System.Drawing.Color.ForestGreen;



        //            cmd.ExecuteNonQuery();
        //            conn.Close();
        //        }
        //    }

        //    Response.Redirect(Request.Url.AbsoluteUri);
        //}


        protected void clear(object sender, EventArgs e)
        {
            bookName.Text = "";
            author.Text = "";
        }
    }
}