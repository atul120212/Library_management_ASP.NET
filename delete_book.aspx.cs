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
    public partial class delete_book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null || Session["role"].ToString() != "1")
            {
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
        }
        string constr = "Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True";

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            int idToDelete = Int32.Parse(Id.Text); // Replace with the actual ID or get it from a control
            DeleteData(idToDelete);
        }
        private void DeleteData(int idToDelete)
        {
            string deleteQuery = "DELETE FROM books WHERE Id=@Id;";

            // Create and open connection
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(deleteQuery, con))
                {
                    // Add parameter for the ID
                    cmd.Parameters.AddWithValue("@Id", idToDelete);
                    try
                    {
                        // Open the connection
                        con.Open();

                        // Execute the delete command
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Data deleted successfully
                            Response.Write("Book deleted successfully.");

                        }
                        else
                        {
                            // No data deleted
                            Response.Write("No Book deleted.");
                        }

                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions
                        Response.Write("Error deleting book: " + ex.Message);
                    }
                }
            }
        }
        protected void clear(object sender, EventArgs e)
        {
            Id.Text = "";
        }
    }
}