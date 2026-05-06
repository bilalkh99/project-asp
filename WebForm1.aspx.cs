using System;
using System.Data.SqlClient;
using System.Configuration;

namespace project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtLoginUser.Text.Trim();
            string password = txtLoginPass.Text.Trim();

            string connStr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                string query = "SELECT TOP 1 username FROM Users WHERE username=@u AND password=@p";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@u", username);
                cmd.Parameters.AddWithValue("@p", password);

                var result = cmd.ExecuteScalar();

                if (result != null)
                {
                    Response.Write("User login Successfully!");
                    Response.Redirect("WebForm3.aspx");
                }
                else
                {
                    Response.Write("Invalid username or password");
                }
            } //
        }
    }
}