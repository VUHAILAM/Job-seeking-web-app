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
            if (!IsPostBack)
            {
                Company.Visible = false;
                Profile1.Visible = true;
            }
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string role = "seeker";
            if (Company.Visible == true)
            {
                role = "recruiter";
            }
            else role = "seeker";
            string sql1 = "insert into account (username,password,role) values('" + TextBox1.Text + "','" + TextBox2.Text + "','"+role+"')";
            SqlCommand cmd2 = new SqlCommand(sql1, con);
            cmd2.ExecuteNonQuery();
            con.Close();
            if (Company.Visible == true && Profile1.Visible == false)
            {
                Company.executeData(TextBox1.Text);
            } else if(Profile1.Visible == true && Company.Visible == false)
            {
                Profile1.executeData(TextBox1.Text);
            }
            Response.Redirect("~/Login.aspx");
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if(CheckBox1.Checked == true)
            {
                Company.Visible = true;
                Profile1.Visible = false;
            } else
            {
                Company.Visible = false;
                Profile1.Visible = true;
            }
        }
    }
}