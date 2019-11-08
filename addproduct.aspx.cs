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
    public partial class WebForm7 : System.Web.UI.Page
    {
        string DBConn;
        protected void Page_Load(object sender, EventArgs e)
        {
            DBConn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        }

        int InsertProduct()
        {
            using (SqlConnection myConnection = new SqlConnection(DBConn))
            {
                SqlCommand MyCommand = new SqlCommand("INSERT INTO product (product_id,product_name,category_name,sales_price,Available_quantity) Values (@product_id,@product_name,@category_name,@sales_price,@Available_quantity)", myConnection);
                MyCommand.Parameters.AddWithValue("@product_id", product_id.Text);
                MyCommand.Parameters.AddWithValue("@product_name", product_name.Text);
                MyCommand.Parameters.AddWithValue("@category_name", category_name.Text);
                MyCommand.Parameters.AddWithValue("@sales_price", sales_price.Text);
                MyCommand.Parameters.AddWithValue("@Available_quantity", Available_quantity.Text);
                myConnection.Open();
                return MyCommand.ExecuteNonQuery();

            }
        }

       

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            InsertProduct();
            Response.Redirect("addproduct.aspx");
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Response.Redirect("updateproduct.aspx");
        }
    }
}