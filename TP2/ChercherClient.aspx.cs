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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ClientTP.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            PeuplerGridview();
            if (GridView1.Rows.Count<1)
            {
                Label1.Visible = true;
                Label2.Visible = false;
            }
            if (GridView1.Rows.Count>0)
            {
                Label1.Visible = false;

                Label2.Visible = true;
            }
            
           
        }
        void PeuplerGridview()
        {
            string recherche = $"Like '%{TextBox1.Text}%' ";
            DataTable dataTable = new DataTable();
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlDataAdapter sqlData = new SqlDataAdapter("select * from clients  WHERE NOM "+recherche, cs);
                sqlData.Fill(dataTable);
            }
            GridView1.DataSource = dataTable;
            GridView1.DataBind();

        }
    }
}