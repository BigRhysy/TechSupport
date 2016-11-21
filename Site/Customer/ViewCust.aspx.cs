//////
/// Created by: Rhys Cunningham, 4101651512
/// Date modified: 18-11-2016
/// Purpose: Add new Customers
/// Known bugs: 
//////

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechSupportApp
{
    public partial class _ViewCust : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string _CustomerID = Convert.ToString(Session["CustomerID"]);
                using (SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rhys\Documents\GitHub\TechSupport\TechSupportApp\App_Data\TechSupport.mdf;Integrated Security=True;Connect Timeout=30"))
                {
                    SqlCommand selected = new SqlCommand("SELECT * FROM Customers WHERE CustomerID = @_CustomerID");
                    selected.Parameters.Add("_CustomerID", SqlDbType.VarChar).Value = _CustomerID;
                    selected.Connection = conn;
                    conn.Open();

                    SqlDataReader reader = selected.ExecuteReader();
                    while (reader.Read())
                    {
                        tbName.Text = (reader["Name"].ToString());
                        tbAddress.Text = (reader["Address"].ToString());
                        tbCity.Text = (reader["City"].ToString());
                        tbState.Text = (reader["State"].ToString());
                        tbZip.Text = (reader["ZipCode"].ToString());
                        tbEmail.Text = (reader["Email"].ToString());
                        tbPhone.Text = (reader["Phone"].ToString());

                    }

                    conn.Close();
                }
            } catch (Exception ex)
            {
                ex.Message.ToString(); 
            }
            
           
            
        }

        protected void regCustSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}