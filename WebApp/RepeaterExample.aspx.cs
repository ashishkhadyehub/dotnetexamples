using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class RepeaterExample : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                showgalleryphotos();
            }
        }

        protected void showgalleryphotos()
        {
            try
            {
                
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand("Select Srno,ThumbPhoto from DBPhotos", con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            rgallery.DataSource = dt;
                            rgallery.DataBind();
                        }
                    }
                }
            }
            catch (Exception es)
            {

            }
        }

        protected void lbtndelete_Click(object sender, EventArgs e)
        {
            try
            {

                RepeaterItem a = (sender as LinkButton).Parent as RepeaterItem;

                int b = int.Parse((a.FindControl("photoid") as Label).Text.ToString());

                //con.Close();
                //string qrys = "Select ThumbPath from DBPhotos where Srno=" + b;
                //con.Open();
                //SqlCommand cmd1 = new SqlCommand(qrys, con);
                //SqlDataReader sdr = cmd1.ExecuteReader();
                //if (sdr.HasRows)
                //{
                //    sdr.Read();
                //    string thumbpath = sdr.GetValue(0).ToString();

                //    System.IO.File.Delete(Server.MapPath(thumbpath));
                //}

                con.Close();
                string qry = "delete from DBPhotos where Srno=" + b;
                SqlCommand cmd = new SqlCommand(qry, con);
                con.Open();
                cmd.ExecuteNonQuery();
                showgalleryphotos();

                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Photo deleted Successfully','','success');", true);

            }
            catch (Exception es)
            {

            }
            finally
            {
                con.Close();
            }
        }
    }
}