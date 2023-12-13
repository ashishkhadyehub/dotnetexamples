using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class QSExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            //string path = "QSExample1.aspx?fname=" + txtName.Text + "&lname=" + txtLastname.Text;
            //Response.Redirect(path);
            Response.Redirect("QSExample1.aspx?fname="+txtName.Text+"&lname="+txtLastname.Text+"");
        }
    }
}