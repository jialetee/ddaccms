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
    public partial class ClientAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DDACDBConnectionString"].ConnectionString);
            try
            {

                con.Open();
                string query = "insert into clients (client_name, client_email, client_company, client_company_address) values (@clientname, @clientemail, @clientcompany, @clientcompanyaddress)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@clientname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@clientemail", TextBox2.Text);
                cmd.Parameters.AddWithValue("@clientcompany", TextBox3.Text);
                cmd.Parameters.AddWithValue("@clientcompanyaddress", TextBox4.Text);


                cmd.ExecuteNonQuery();


                string message = "Successfully Create New Client.";
                string url = "/ClientView.aspx";
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

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
    }
}
