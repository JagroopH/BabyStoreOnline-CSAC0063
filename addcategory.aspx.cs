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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into category(category_id,category_name)values (@category_id,@category_name)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@category_id", category_id.Text);
                cmd.Parameters.AddWithValue("@category_name", category_name.Text);
                

                cmd.ExecuteNonQuery();

                Response.Write("Successfully!!!thank you");

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());

            }



        }

       
    }
    }
