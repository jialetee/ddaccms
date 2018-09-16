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
    public partial class ShipmentCreate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["DDACDBConnectionString"].ToString(); // connection string
            SqlConnection con = new SqlConnection(constr);
            con.Open();

            SqlCommand com = new SqlCommand("select * from invoice", con); // table name 
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset
            DropDownList1.DataTextField = ds.Tables[0].Columns["invoice_id"].ToString(); // text field name of table dispalyed in dropdown
            DropDownList1.DataValueField = ds.Tables[0].Columns["invoice_id"].ToString();             // to retrive specific  textfield name 
            DropDownList1.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
            DropDownList1.DataBind();  //binding dropdownlist
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DDACDBConnectionString"].ConnectionString);
            try
            {

                con.Open();       
                string query = "insert into shipment (export_to, import_from, invoice_id) values (@exportto, @importfrom, @invoiceid)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@importfrom", TextBox2.Text);
                cmd.Parameters.AddWithValue("@invoiceid", Convert.ToInt64(DropDownList1.Text));
                cmd.Parameters.AddWithValue("@exportto", TextBox3.Text);


                cmd.ExecuteNonQuery();


                string message = "Successfully Create New Shipment.";
                string url = "/ShipmentView.aspx";
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