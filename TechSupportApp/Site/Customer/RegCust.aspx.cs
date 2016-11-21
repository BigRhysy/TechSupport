//////
/// Created by: Rhys Cunningham, 4101651512
/// Date modified: 18-11-2016
/// Purpose: Register products with a customer
/// Known bugs: 
//////
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechSupportApp
{
    public partial class _RegCust : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            DateTime current = DateTime.Now;
            string currentFormatted = current.ToString("dd/MM/yyyy");
            tbName.Text = Convert.ToString(Session["CustomerID"]);
            tbDate.Text = currentFormatted;
        }

        protected void newRegSubmit_Click(object sender, EventArgs e)
        {
            SqlDataSourceRegCust.InsertCommandType = SqlDataSourceCommandType.Text;
            SqlDataSourceRegCust.InsertCommand = "INSERT INTO [Registrations] ([CustomerID], [ProductCode], [RegistrationDate]) VALUES (@regID, @regProduct, GETDATE())";

            SqlDataSourceRegCust.InsertParameters.Add("regID", tbName.Text);
            SqlDataSourceRegCust.InsertParameters.Add("regProduct", DDLProduct.SelectedValue);

            SqlDataSourceRegCust.Insert();

            Server.Transfer("~/Site/Customer/ViewCust.aspx", false);
        }
    }
}