using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class LiteralExample : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            showphotos();
        }

        protected void showphotos()
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("select * from DBPhotos",con);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if(sdr.HasRows)
            {
                while(sdr.Read())
                {
                    lphotos.Text += "<div class='col-md-4'><a class='lightbox' href='" + sdr.GetValue(2)+"'><img src='"+sdr.GetValue(1)+"' /></a></div>";
                }
            }
        }
    }
}