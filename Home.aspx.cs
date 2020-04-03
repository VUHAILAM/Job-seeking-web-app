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
    public partial class Home : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadData();
        }

        

        public void loadData()
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string sql = "select jobpost_id, job_title, company_name, account.username from job_post join account on job_post.username = account.username join company on company.username = account.username";
            SqlDataAdapter ad = new SqlDataAdapter(sql, con);
            DataTable tb = new DataTable();
            ad.Fill(tb);
            GridView1.DataSource = tb;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            loadData();
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if(Session.Count != 0)
            {
                if(Session["role"] == "recruiter")
                {
                    this.MasterPageFile = "Recruiter.Master";
                } else if (Session["role"] == "seeker")
                {
                    this.MasterPageFile = "Candidate.Master";
                }


            }
        }
    }
}