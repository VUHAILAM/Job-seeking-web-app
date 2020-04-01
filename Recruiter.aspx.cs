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
    public partial class Recruiter : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            string rname = Session["User"].ToString();
            Label1.Text = Session["User"].ToString();
            /*SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string sql = "select * from company where username = '" + rname + "'";
            SqlDataAdapter adp = new SqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            DetailsView1.DataSource = ds;
            DetailsView1.DataBind();
            con.Close();*/
        }
    }
}