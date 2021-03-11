using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

namespace Lab2
{
    public partial class Auction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Create_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["DB"].ConnectionString);
            sqlConnect.Open();
            SqlCommand store = new SqlCommand("Select Top 1 TicketID From Ticket Order By TicketID Desc", sqlConnect);
            int result = (int)store.ExecuteScalar();
            SqlCommand type = new SqlCommand("insert into [Auction](ItemDesc, TicketID) values('" + itemdesc.Text + "','" + result + "')", sqlConnect);
            SqlCommand type1= new SqlCommand("insert into [Inventory](InventoryDesc, TicketID) values('" + itemdesc.Text + "','" + result + "')", sqlConnect);
            SqlCommand type2 = new SqlCommand("update Ticket set CustomerID='" + CustDdl.SelectedValue + "' where TicketID ='" + result + "'", sqlConnect);
            SqlCommand type3 = new SqlCommand("update Ticket set IntialEmployee='" + EmployeeDdl.SelectedValue + "' where TicketID ='" + result + "'", sqlConnect);
            type.ExecuteNonQuery();
            type1.ExecuteNonQuery();
            type2.ExecuteNonQuery();
            type3.ExecuteNonQuery();
            sqlConnect.Close();
            Response.Redirect("Dashboard.aspx");
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["DB"].ConnectionString);
            sqlConnect.Open();
            SqlCommand store = new SqlCommand("Select Top 1 TicketID From Ticket Order By TicketID Desc", sqlConnect);
            int result = (int)store.ExecuteScalar();
            SqlCommand type = new SqlCommand("Delete From Ticket Where TicketID='" + result + "'", sqlConnect);
            type.ExecuteNonQuery();
            sqlConnect.Close();
            Response.Redirect("Dashboard.aspx");
        }
    }
}