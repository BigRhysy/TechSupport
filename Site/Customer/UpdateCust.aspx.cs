//////
/// Created by: Rhys Cunningham, 4101651512
/// Date modified: 18-11-2016
/// Purpose: Update and Delete Customers
/// Known bugs: 
//////

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Providers.Entities;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechSupportApp
{
    public partial class _CustomerMaintenance : System.Web.UI.Page   
    {
        string name;
        string address;
        string city;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnViewCust_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/Site/Customer/ViewCust.aspx", true);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session ["CustomerID"] = GridView1.SelectedRow.Cells[1].Text;
        }
    }
}