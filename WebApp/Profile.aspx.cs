using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserID"] != null)
            {
                if(!IsPostBack)
                {
                    getdata();
                }
                
            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }
        }

        protected void getdata()
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("select  * from DBRegister where Srno=@id", con);
            cmd.Parameters.AddWithValue("@id", Session["UserID"].ToString());
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.HasRows)
            {
                sdr.Read();
                txtName.Text = sdr.GetValue(1).ToString();
                txtContact.Text = sdr.GetValue(2).ToString();
                txtEmail.Text = sdr.GetValue(3).ToString();
                ddlDept.SelectedItem.Text = sdr.GetValue(4).ToString();
                ddlDept.Enabled = false;
            }


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("Update DBRegister set Name=@name,Contact=@contact,Email=@email where Srno=@id",con);
            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@contact", txtContact.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@id", Session["UserID"].ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            getdata();
        }

        

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("SignIn.aspx");

        }
    }
}