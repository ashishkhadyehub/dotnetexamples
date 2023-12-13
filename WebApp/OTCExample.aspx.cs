using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class OTCExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtId_TextChanged(object sender, EventArgs e)
        {
            if(txtId.Text=="1")
            {
                lbldesignation.Text = "Software Engineer";
            }
            else if(txtId.Text == "2")
            {
                lbldesignation.Text = "Software Testing Engineer";
            }
            else if (txtId.Text == "3")
            {
                lbldesignation.Text = "Team Lead";
            }
        }
    }
}