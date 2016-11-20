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
    public partial class _AddIncident : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void newTechSubmit_Click(object sender, EventArgs e)
        {
            SqlDataSourceAddTech.InsertCommandType = SqlDataSourceCommandType.Text;
            SqlDataSourceAddTech.InsertCommand = "INSERT INTO [Technicians] ([Name], [Email], [Phone], [Level], [Password]) VALUES (@Name, @Email, @Phone, @Level, @Password)";

            SqlDataSourceAddTech.InsertParameters.Add("Name", tbName.Text);
            SqlDataSourceAddTech.InsertParameters.Add("Email", tbEmail.Text);
            SqlDataSourceAddTech.InsertParameters.Add("Phone", tbPhone.Text);
            SqlDataSourceAddTech.InsertParameters.Add("Level", tbLevel.Text);
            SqlDataSourceAddTech.InsertParameters.Add("Password", tbPassword.Text);
            SqlDataSourceAddTech.Insert();

            Server.Transfer("~/Site/Tech/UpdateTech.aspx", false);
        }
    }
}