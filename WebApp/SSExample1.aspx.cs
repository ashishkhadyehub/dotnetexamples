using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class SSExample1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FirstName"] != null)
            {
                txtName.Text = Session["FirstName"].ToString();
                txtLastname.Text= Session["LastName"].ToString();
                txtName.Enabled = false;
                txtLastname.Enabled=false;
            }
            else
            {
                Response.Redirect("SSExample.aspx");
            }
        }
    }
}