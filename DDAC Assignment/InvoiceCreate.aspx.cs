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
    public partial class InvoiceCreate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["DDACDBConnectionString"].ToString(); // connection string
                SqlConnection con = new SqlConnection(constr);
                con.Open();

                SqlCommand com = new SqlCommand("select client_id, client_name, client_company from clients", con); // table name 
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();

                da.Fill(ds);  // fill dataset
                DropDownList1.DataTextField = ds.Tables[0].Columns["client_name"].ToString(); // text field name of table dispalyed in dropdown
                DropDownList1.DataValueField = ds.Tables[0].Columns["client_company"].ToString();             // to retrive specific  textfield name 
                DropDownList1.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                DropDownList1.DataBind();  //binding dropdownlist

                
            }
            if (!IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["DDACDBConnectionString"].ToString(); // connection string
                SqlConnection con = new SqlConnection(constr);
                con.Open();

                SqlCommand com1 = new SqlCommand("select stock_id, stock_name, stock_price, stock_quantity from inventory", con);
                SqlDataAdapter da1 = new SqlDataAdapter(com1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                DropDownList2.DataTextField = ds1.Tables[0].Columns["stock_name"].ToString();
                DropDownList2.DataValueField = ds1.Tables[0].Columns["stock_price"].ToString();
                DropDownList2.DataSource = ds1.Tables[0];
                DropDownList2.DataBind();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DDACDBConnectionString"].ConnectionString);
            try
            {

                con.Open();
                string query = "insert into invoice (invoice_clientname, invoice_clientcompany, invoice_stockname, invoice_stockquantity) values (@invoiceclientname, @invoiceclientcompany, @invoicestockname, @invoicestockquantity)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@invoiceclientname", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@invoiceclientcompany", TextBox1.Text);
                cmd.Parameters.AddWithValue("@invoicestockname", DropDownList2.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@invoicestockquantity", Convert.ToInt64(TextBox4.Text));

                cmd.ExecuteNonQuery();


                string message = "Successfully Create New Invoice.";
                string url = "/InvoiceView.aspx";
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = DropDownList1.SelectedValue.ToString();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox3.Text = DropDownList2.SelectedValue.ToString();
        }
    }
}