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
    public partial class Job : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string sql = "select job_title, post, skillis_req, edu_req, basic_req, salary_max from job_post where jobpost_id = " + id;

            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            TextBox4.Text = dt.Rows[0]["job_title"].ToString();
            TextBox5.Text = dt.Rows[0]["post"].ToString();
            TextBox1.Text = dt.Rows[0]["basic_req"].ToString();
            TextBox2.Text = dt.Rows[0]["skillis_req"].ToString();
            TextBox3.Text = dt.Rows[0]["salary_max"].ToString();
            con.Close();
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session.Count != 0)
            {
                if (Session["role"] == "recruiter")
                {
                    this.MasterPageFile = "Recruiter.Master";
                }
                else if (Session["role"] == "seeker")
                {
                    this.MasterPageFile = "Candidate.Master";
                }


            }
        }
    }
}