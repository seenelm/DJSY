using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class yup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlMethod_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void rbAddOn_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlPhotos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlMLS_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlAuction_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (ddlAuction.SelectedValue == "1")
            {
                Response.Redirect("WebForm1.aspx");
            }
            else
            {
                Response.Redirect("WebForm2.aspx");
            }
        }
    }
}