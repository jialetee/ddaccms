using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace DDAC_Assignment
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TextBox1.Text) | string.IsNullOrEmpty(TextBox2.Text))
            {
                Response.Write("<script>alert('Username or Password Must be Filled! ')</script>");
            }

            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DDACDBConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("select count (*) as cnt from admin where admin_email = @email and admin_password= @password", con);
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@email", TextBox1.Text);
                cmd.Parameters.AddWithValue("@password", TextBox2.Text);


                con.Open();
                if (cmd.ExecuteScalar().ToString() == "1")
                {
                    string message = "Welcome =)!";
                    string url = "/Home.aspx";
                    string script = "{ alert('";
                    script += message;
                    script += "');";
                    script += "window.location = '";
                    script += url;
                    script += "'; }";

                    ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "alert", script, true);

                }

                else if (cmd.ExecuteScalar().ToString() == "0")
                {
                    Response.Write("<script>alert('Username or Password Mismatched! ')</script>");

                }


            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        
    }
}