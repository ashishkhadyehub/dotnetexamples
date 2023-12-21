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
    public partial class ShowDataFromDBExample : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            getrecentemp();
        }

        protected void getrecentemp()
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("select top 1 * from DBUsers order by Srno DESC", con);
            con.Open();
            SqlDataReader sdr= cmd.ExecuteReader();
            if(sdr.HasRows)
            {
                sdr.Read();
                lblname.Text=sdr.GetValue(1).ToString();
                lblcontact.Text=sdr.GetValue(2).ToString();
                lblemail.Text=sdr.GetValue(3).ToString();
                lblcity.Text=sdr.GetValue(4).ToString();
            }


        }
    }
}