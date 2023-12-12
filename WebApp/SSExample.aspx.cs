using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class SSExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            Session["FirstName"] = txtName.Text;
            Session["LastName"] = txtLastname.Text;
            //set expiry time
            Session.Timeout = 10;
            Response.Redirect("SSExample1.aspx");
        }
    }
}