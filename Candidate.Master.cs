using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobProject
{
    public partial class Candidate1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"].ToString() != "")
            {
                Label1.Text = Session["User"].ToString();
            }
        }
    }
}