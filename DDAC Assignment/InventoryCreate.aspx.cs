using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace DDAC_Assignment
{
    public partial class InventoryCreate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DDACDBConnectionString"].ConnectionString);
            try
            {

                con.Open();
                string query = "insert into inventory (stock_name, stock_quantity, stock_price) values (@stockname, @stockquantity, @stockprice)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@stockname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@stockquantity", TextBox2.Text);
                cmd.Parameters.AddWithValue("@stockprice", TextBox3.Text);


                cmd.ExecuteNonQuery();


                string message = "Successfully Create New Inventory.";
                string url = "/InventoryView.aspx";
                string script = "{ alert('";
                script += message;
                script += "');";
                script += "window.location = '";
                script += url;
                script += "'; }";

                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "alert", script, true);
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error : " + ex.ToString());
            }
        }
    }
}