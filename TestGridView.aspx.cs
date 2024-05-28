using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace TestGridView
{
    public partial class TestGridView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtName.Text = "aaaaa";
        }

        protected void btnSumbit(object sender, EventArgs e)
        {
            txtName.Text = "Anurag";
        }
        
    }
}