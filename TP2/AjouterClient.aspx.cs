using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationWeb2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ClientTP.mdf;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(cs))
            {
                string requete = "INSERT INTO Clients (Nom,Prenom,Addresse)";
                requete += "Values(@Nom,@Prenom,@Addresse)";

                SqlCommand cmd = new SqlCommand(requete, con);

                cmd.Parameters.AddWithValue("@Nom",TextBox1.Text);
                cmd.Parameters.AddWithValue("@Prenom", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Addresse", TextBox3.Text+" "+ TextBox4.Text+" "+TextBox5.Text+" "+ TextBox6.Text+" "+ DropDownList1.Text);

                con.Open();

                cmd.ExecuteNonQuery();


            }
            Label1.Visible = true;
        }
    }
}