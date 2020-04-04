using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobProject
{
    public partial class Candidate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Label1.Text = Session["User"].ToString();
        }

        protected void Page_PreInit(Object sender, EventArgs e)
        {
            this.MasterPageFile = "Candidate.Master";
        }

        
    }
}