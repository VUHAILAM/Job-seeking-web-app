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
    public partial class Recruiter_register : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string sql = "insert into Company(company_name,username,que_id,ansr,contact_person,company_contact,company_addrs,company_email, company_details) values('" + TextBox5.Text + "','" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox7.Text + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            string sql1 = "insert into account (username,password,role) values('" + TextBox1.Text + "','" + TextBox2.Text + "','recruiter')";
            SqlCommand cmd2 = new SqlCommand(sql1, con);
            cmd2.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Recruiter_Login.aspx");
        }
    }
}