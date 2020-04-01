using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Web.UI.HtmlControls;
using System.Data;

namespace JobProject
{
    public partial class Admin_login : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString.ToString();
        SqlConnection con = null;
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool fl = false;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from account";
            dr = cmd.ExecuteReader();
            string role = "";
            while(dr.Read())
            {
                string username = dr[0].ToString();
                string password = dr[1].ToString();
                if(TextBox1.Text == username && TextBox2.Text == password)
                {
                    role = dr[2].ToString();
                    fl = true;
                }
            }
            dr.Close();
            if(fl == false)
            {
                Label1.Visible = true;
                Label1.Text = "Not Authorized";
                Label1.ForeColor = System.Drawing.Color.Red;
            } else
            {
                if(role == "admin")
                {
                    Session["User"] = TextBox1.Text;
                    Label1.Visible = true;
                    Label1.Text = "Authorized";
                    Label1.ForeColor = System.Drawing.Color.Green;
                    Response.Redirect("~/Admin.aspx");
                } else
                {
                    Label1.Visible = true;
                    Label1.Text = "Not Authorized";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
            }
            con.Close();
        }
    }
}