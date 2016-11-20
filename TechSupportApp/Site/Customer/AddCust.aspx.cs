//////
/// Created by: Bourne Gordon-Krueger, 0103285514
/// Date modified: 17-11-2016
/// Purpose: Add new Technicians
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
    public partial class _AddCust : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void newCustSubmit_Click(object sender, EventArgs e)
        {
            SqlDataSourceAddCust.InsertCommandType = SqlDataSourceCommandType.Text;
            SqlDataSourceAddCust.InsertCommand = "INSERT INTO [Customers] ([Name], [Address], [City], [State], [ZipCode], [Phone], [Email]) VALUES (@custName, @custAddress, @custCity, @custState, @custZipCode, @custPhone, @custEmail)";

            SqlDataSourceAddCust.InsertParameters.Add("custName", tbName.Text);
            SqlDataSourceAddCust.InsertParameters.Add("custAddress", tbAddress.Text);
            SqlDataSourceAddCust.InsertParameters.Add("custCity", tbCity.Text);
            SqlDataSourceAddCust.InsertParameters.Add("custState", tbState.Text);
            SqlDataSourceAddCust.InsertParameters.Add("custZipCode", tbZip.Text);
            SqlDataSourceAddCust.InsertParameters.Add("custPhone", tbPhone.Text);
            SqlDataSourceAddCust.InsertParameters.Add("custEmail", tbEmail.Text);
            SqlDataSourceAddCust.Insert();

            Server.Transfer("~/Site/Customer/UpdateCust.aspx", false);
        }
    }
}