using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WillProject2019
{
    public partial class WebForm3 : System.Web.UI.Page
    {



        protected void Button1_Click(object sender, EventArgs e)
        {

            


        }

        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            bool isHuman = CaptchaBox.Validate(TxtCaptcha.Text);
            TxtCaptcha.Text = null;
            if (!isHuman)
            {
                LabelMsg.Text = "Invalid Captacha";
            }
            else
            {

                try
                {

                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    conn.Open();//Add data to the sql database
                    string insertQuery = "insert into tbl(username,password,confirmpassword)values (@username,@password,@confirmpassword)";
                    SqlCommand cmd = new SqlCommand(insertQuery, conn);
                    cmd.Parameters.AddWithValue("@username", username.Text);
                    cmd.Parameters.AddWithValue("@password", password.Text);
                    cmd.Parameters.AddWithValue("@confirmpassword", confirmpassword.Text);

                    cmd.ExecuteNonQuery();



                    conn.Close();

                }
                //catch errors
                catch (Exception ex)
                {
                    Response.Write("error" + ex.ToString());
                }

                LabelMsg.Text = "Valid Captcha";
                Response.Redirect("LogIn.aspx");
            }
        }
    }
}