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
    public partial class Profile : System.Web.UI.UserControl
    {
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                que();
            }
            Calendar1.SelectedDate = DateTime.Now;
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
            string gndr = null;


            if (RadioButton1.Checked == true)
            {
                gndr = RadioButton1.Text;
            }
            else if(RadioButton2.Checked == true)
            {
                gndr = RadioButton2.Text;
            } else
            {
                gndr = RadioButton3.Text;
            }
            string sql = "insert into candidate (username, que_id, ans, first_name, candidate_addrs, gender, dob, contact_no, email_id)values ('"+user+"','" + DropDownList1.SelectedValue + "','" + TextBox5.Text + "','" + TextBox1.Text +"','" + TextBox2.Text + "','" + gndr + "',CONVERT(datetime, N'"+ Calendar1.SelectedDate.ToString()+"',121),'" + TextBox3.Text + "','"+TextBox4.Text+"')";
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