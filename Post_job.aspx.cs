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
    public partial class Post_job : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            loadCategory();
            loadArea();
            string user = "";
            user = Session["User"].ToString();     
            if (user != "recruiter")
            {
                Button1.Visible = false;
            }
            else Button1.Visible = true;
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

        public void loadArea()
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string query = "select * from Area where Area.category_id = '"+ DropDownList1.SelectedValue + "'";
            SqlDataAdapter  adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            DropDownList2.DataSource = ds.Tables[0];
            DropDownList2.DataTextField = "area_name";
            DropDownList2.DataValueField = "area_id";
            DropDownList2.DataBind();

            DropDownList2.Items.Insert(0, new ListItem("select", ""));
            con.Close();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string user = Session["User"].ToString();
            string sql = "insert into job_post(job_title, area_id, post, skillis_req, edu_req, basic_req, username, salary_min, salary_max) values ('"
                +TextBox1.Text+"','" + DropDownList2.SelectedValue + "','" 
                + TextBox2.Text + "','" +TextBox3.Text+"','"+DropDownList3.SelectedValue+"','"+TextBox4.Text+"','"+user+"','"
                +TextBox5.Text+"','"+TextBox6.Text+"')";
            SqlCommand cmd = new SqlCommand(sql, con);
            if(cmd.ExecuteNonQuery()>0)
            {
                Response.Write("<script> alert('Record saved Successfuly')</script>");
            }
            con.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadArea();
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