using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace project
{
    public partial class academyform : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string firstName = txtName.Text.Trim();
            string lastName = txtLastName.Text.Trim();
            string location = txtLocation.Text.Trim();
            string email = txtEmail.Text.Trim();
            string phone = txtPhone.Text.Trim();

            if (string.IsNullOrEmpty(firstName) ||
                string.IsNullOrEmpty(lastName) ||
                string.IsNullOrEmpty(location) ||
                string.IsNullOrEmpty(email) ||
                string.IsNullOrEmpty(phone))
            {
                lblMsg.Text = "⚠️ Please fill in all required fields.";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }

            string emailPattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
            if (!Regex.IsMatch(email, emailPattern))
            {
                lblMsg.Text = "Invalid email format";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }

            string phonePattern = @"^\+\d{1,3}\d{3,13}$";
            if (!Regex.IsMatch(phone, phonePattern))
            {
                lblMsg.Text = "Invalid Phone Number format";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }

            string connStr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                try
                {
                    conn.Open();

                    string query = @"
INSERT INTO academy_form 
(firstname, lastname, email, location, phone_number)
VALUES (@fn, @ln, @em, @loc, @ph);

SELECT SCOPE_IDENTITY();
";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@fn", firstName);
                        cmd.Parameters.AddWithValue("@ln", lastName);
                        cmd.Parameters.AddWithValue("@em", email);
                        cmd.Parameters.AddWithValue("@loc", location);
                        cmd.Parameters.AddWithValue("@ph", phone);

                        int id = Convert.ToInt32(cmd.ExecuteScalar());

                        Session["student_id"] = id;
                        Session["firstName"] = firstName;
                        Session["lastName"] = lastName;
                        Session["email"] = email;
                    }

                    Response.Redirect("Welcome.aspx");
                }
                catch (Exception ex)
                {
                    lblMsg.Text = "❌ Error: " + ex.Message;
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}