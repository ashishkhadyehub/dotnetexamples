using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApp
{
    public partial class GVExample : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                gvUsers.DataSource = getusers();
                gvUsers.DataBind();
            }
        }

        protected DataSet getusers()
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("select * from DBUsers", con);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            return ds;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("insert into DBUsers values (@name,@contact,@email,@city,@dt)",con);
            cmd.Parameters.AddWithValue("@name",txtname.Text);
            cmd.Parameters.AddWithValue("@contact", txtcontact.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@city", txtcity.Text);
            cmd.Parameters.AddWithValue("@dt", DateTime.Now);
            con.Open();
            cmd.ExecuteNonQuery();
            gvUsers.DataSource = getusers();
            gvUsers.DataBind();
            txtcity.Text = "";
            txtname.Text = "";
            txtemail.Text = "";
            txtcontact.Text = "";

        }

        protected void gvUsers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvUsers.EditIndex = e.NewEditIndex;
            gvUsers.DataSource = getusers();
            gvUsers.DataBind();
        }

        protected void gvUsers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvUsers.EditIndex = -1;
            gvUsers.DataSource = getusers();
            gvUsers.DataBind();
        }

        protected void gvUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
            GridViewRow row = gvUsers.Rows[e.RowIndex];
            string name = (row.FindControl("txteName") as TextBox).Text;
            string contact = (row.FindControl("txteContact") as TextBox).Text;
            string email = (row.FindControl("txteEmail") as TextBox).Text;
            string city = (row.FindControl("txteCity") as TextBox).Text;

            con.Close();
            SqlCommand cmd = new SqlCommand("update DBUsers set Name=@name,Contact=@con,Email=@email,City=@city,CreatedDate=@dt where Srno='"+ gvUsers.DataKeys[e.RowIndex].Value + "'",con);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@con", contact);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@city", city);
            cmd.Parameters.AddWithValue("@dt", DateTime.Now);
            con.Open();
            cmd.ExecuteNonQuery();
            gvUsers.EditIndex = -1;
            gvUsers.DataSource = getusers();
            gvUsers.DataBind();
        }

        protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
           
            con.Close();
            SqlCommand cmd = new SqlCommand("delete from DBUsers where Srno='" + gvUsers.DataKeys[e.RowIndex].Value + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            gvUsers.EditIndex = -1;
            gvUsers.DataSource = getusers();
            gvUsers.DataBind();
        }
    }
}