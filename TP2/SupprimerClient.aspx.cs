using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationWeb2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ClientTP.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                string query = $"DELETE FROM Clients WHERE Nom ='{TextBox1.Text}'";
                SqlCommand sqlcmd = new SqlCommand(query, con);
                int test = sqlcmd.ExecuteNonQuery();
                sqlcmd.ExecuteNonQuery();
                if (test­­­>0)
                {
                    Label1.Visible = true;
                }
            }
           
            
            
        }
    }
}