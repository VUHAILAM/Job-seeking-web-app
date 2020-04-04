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
    public partial class Search_Job : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadCategory();
                loadArea(DropDownList1.SelectedValue);
                TextBox1.Text = "0";
                TextBox2.Text = long.MaxValue.ToString();
            }
            loadData();
        }
        public void loadCategory()
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string query = "select * from Category";
            SqlDataAdapter adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            DropDownList1.DataSource = ds.Tables[0];
            DropDownList1.DataTextField = "category_name";
            DropDownList1.DataValueField = "category_id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("select", ""));

            con.Close();
        }

        public void loadArea(string id)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string query = "select * from Area where Area.category_id = '" + DropDownList1.SelectedValue + "'";
            SqlDataAdapter adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            DropDownList2.DataSource = ds.Tables[0];
            DropDownList2.DataTextField = "area_name";
            DropDownList2.DataValueField = "area_id";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("select", ""));

            con.Close();

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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadArea(DropDownList1.SelectedValue);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string sql = "select jobpost_id, job_title, company_name, account.username from job_post join account on job_post.username = account.username join company on company.username = account.username"+
                " where  job_title LIKE '%" + TextBox3.Text + "%' and company_name LIKE '%" + TextBox4.Text+"%' and area_id ='"
                +DropDownList2.SelectedValue+ "' and salary_min >= "+TextBox1.Text+ "and salary_max <=" +TextBox2.Text;
            SqlDataAdapter ad = new SqlDataAdapter(sql, con);
            DataTable tb = new DataTable();
            ad.Fill(tb);
            GridView1.DataSource = tb;
            GridView1.DataBind();
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

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "view")
            {
                int r = Int32.Parse(e.CommandArgument.ToString());
                string id = GridView1.Rows[r].Cells[0].Text;
                string url = "Job.aspx?id=" + id;
                Response.Redirect(url);
            }
        }
    }
}