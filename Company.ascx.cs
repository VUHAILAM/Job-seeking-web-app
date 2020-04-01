using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobProject
{
    public partial class Company : System.Web.UI.UserControl
    {
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                que();
            }
        }
        public void que()
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("select * from question", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DropDownList1.DataSource = ds.Tables[0];
            DropDownList1.DataTextField = "question";
            DropDownList1.DataValueField = "que_id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("select", "0"));
            con.Close();
        }
        public void executeData(string user)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string sql = "insert into Company(company_name,username,que_id,ansr,contact_person,company_contact,company_addrs,company_email, company_details) values('" + TextBox5.Text + "','"+user+"','" + DropDownList1.SelectedValue + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox7.Text + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                //Session["js"] = TextBox1.Text;

                Response.Write("<script> alert('Record saved Successfuly')</script>");
            }
            con.Close();
        }
    }
}