using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class QSExample1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["fname"] != null)
            {
                //txtName.Text = Request.QueryString["fname"].ToString();
                //txtLastname.Text = Request.QueryString["lname"].ToString();

                txtName.Text = Request.QueryString[0].ToString();
                txtLastname.Text = Request.QueryString[1].ToString();

            }
        }
    }
}