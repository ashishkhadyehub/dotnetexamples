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
    public partial class UploadMediaExample : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            foreach (var files in fugallery.PostedFiles)
            {
                string ext = System.IO.Path.GetExtension(files.FileName);
                Guid g = Guid.NewGuid();
                string imgName = g + ext;
                string pathimg = "Photos/" + imgName;
                //saving original image
                files.SaveAs(Server.MapPath(pathimg));

                string paththumbimg = "ThumbPhotos/" + imgName;
                int widthC = 600;
                int heightC = 400;
                System.IO.Stream streamC = files.InputStream;
                System.Drawing.Bitmap imageC = new Bitmap(streamC);
                Bitmap targetC = new Bitmap(widthC, heightC);
                Graphics graphicC = Graphics.FromImage(targetC);
                graphicC.DrawImage(imageC, 0, 0, widthC, heightC);

                //saving thumbnail image
                targetC.Save(Server.MapPath(paththumbimg));

                con.Close();
                SqlCommand cmd = new SqlCommand("insert into DBPhotos values (@thumb,@photo,@dt)",con);
                cmd.Parameters.AddWithValue("@thumb", paththumbimg);
                cmd.Parameters.AddWithValue("@photo", pathimg);
                cmd.Parameters.AddWithValue("@dt", DateTime.Now);
                con.Open();
                cmd.ExecuteNonQuery();

            }
        }
    }
}