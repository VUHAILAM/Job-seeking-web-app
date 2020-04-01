﻿using System;
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
            if(!IsPostBack)
             loadCategory();
            loadArea(DropDownList1.SelectedValue);
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
            

            con.Close();

        }
        public void loadData()
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string sql = "select job_title, company_name, post, skillis_req, edu_req, basic_req from job_post, company" +
                " where job_post.company_id = company.company_id";
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
    }
}