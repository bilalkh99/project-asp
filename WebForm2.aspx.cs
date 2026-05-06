using System;
using System.Data.SqlClient;
using System.Configuration;

namespace project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUserName.Text.Trim();
            string password = txtPassword.Text.Trim();

            string connStr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                string query = "INSERT INTO Users (username, password) VALUES (@username, @password)";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);

                cmd.ExecuteNonQuery();
            }

            Response.Write("User Registered Successfully!");
            Response.Redirect("WebForm3.aspx");
        }
    }
}