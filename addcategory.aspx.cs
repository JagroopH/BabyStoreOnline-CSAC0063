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
        string DBConn;
        protected void Page_Load(object sender, EventArgs e)
        {
            DBConn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        }


        int Insertcategory()
        {
            using (SqlConnection myConnection = new SqlConnection(DBConn))
            {
                SqlCommand MyCommand = new SqlCommand("INSERT INTO category (category_id,category_name) Values (@category_id,@category_name)", myConnection);
                MyCommand.Parameters.AddWithValue("@category_id", category_id.Text);
                MyCommand.Parameters.AddWithValue("@category_name", category_name.Text);
                myConnection.Open();
                return MyCommand.ExecuteNonQuery();

            }
        }
        

        

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Insertcategory();
            Response.Redirect("addcategory.aspx");
        }
    }
    }
