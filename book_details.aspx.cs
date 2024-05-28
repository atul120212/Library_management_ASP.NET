using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;

namespace TestGridView
{
    public partial class book_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (Session["id"] == null || Session["role"].ToString() != "1")
                {
                    Session.RemoveAll();
                    Session.Abandon();
                    Response.Redirect("Login.aspx");
                }
                GetData();
            //    //Populating a DataTable from database.
            //    DataTable dt = this.GetData();

            //    //Building an HTML string.
            //    StringBuilder html = new StringBuilder();

                //Table start.
                //html.Append("<table border = '1'>");

                ////Building the Header row.
                //html.Append("<tr>");
                //foreach (DataColumn column in dt.Columns)
                //{
                //    html.Append("<th>");
                //    html.Append(column.ColumnName);
                //    html.Append("</th>");
                //}
                //html.Append("</tr>");

                ////Building the Data rows.
                //foreach (DataRow row in dt.Rows)
                //{
                //    html.Append("<tr>");
                //    foreach (DataColumn column in dt.Columns)
                //    {
                //        html.Append("<td>");
                //        html.Append(row[column.ColumnName]);
                //        html.Append("</td>");
                //    }
                //    html.Append("</tr>");
                //}

                ////Table end.
                //html.Append("</table>");

                ////Append the HTML string to Placeholder.
                //books.Controls.Add(new Literal { Text = html.ToString() });
            }
        }
        private DataTable GetData()
        {
            //    string constr = "Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True";
            //    using (SqlConnection con = new SqlConnection(constr))
            //    {
            //        using (SqlCommand cmd = new SqlCommand("SELECT Id, username, address FROM staff_register"))
            //        {
            //            using (SqlDataAdapter sda = new SqlDataAdapter())
            //            {
            //                cmd.Connection = con;
            //                sda.SelectCommand = cmd;
            //                using (DataTable dt = new DataTable())
            //                {
            //                    sda.Fill(dt);
            //                    return dt;
            //                }
            //            }
            //        }
            //    }
            SqlConnection con = new SqlConnection("Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM books");
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
            sda.Dispose();
            cmd.Dispose();
            con.Dispose();

        }
    }
}