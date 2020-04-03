using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace JobProject
{
    public partial class Recruiter_Login : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string sql = "select * from account where username = @username and password = @password";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            int rowcnt = dt.Rows.Count;
            string Username = "";
            string Password = "";
            for (int i = 0; i < rowcnt; i++)
            {
                Username = dt.Rows[i]["username"].ToString();
                Password = dt.Rows[i]["password"].ToString();
                if(Username == TextBox1.Text && Password == TextBox2.Text)
                {
                    
                    Session["User"] = Username;
                    if(dt.Rows[i]["role"].ToString() == "admin")
                    {
                        Response.Redirect("~/Admin.aspx");
                    } else if(dt.Rows[i]["role"].ToString() == "recruiter")
                    {
                        Session.Add("role", "recruiter");
                        Response.Redirect("~/Recruiter.aspx");
                    } else if(dt.Rows[i]["role"].ToString() == "seeker")
                    {
                        int cid = 0;
                        cid = getCid(Username);
                        Session.Add("Cid", cid);
                        Session.Add("role", "seeker");
                        Response.Redirect("~/Candidate.aspx");
                    }
                } else
                {
                    Label1.Visible = true;
                    Label1.Text = "Invalid UserName or PassWord! Please try again...";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        public int getCid(string UserName)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            int res = 0;
            string sql = "select candidate_id from candidate where username = '" + UserName + "'";
            SqlDataAdapter adp = new SqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            res = Convert.ToInt32(ds.Tables[0].Rows[0]["candidate_id"].ToString());
            return res;
        }
    }
}