using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.NetworkInformation;
using System.Text.RegularExpressions;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static System.Net.Mime.MediaTypeNames;
using System.Text.RegularExpressions;


namespace project
{
    public partial class academyform : System.Web.UI.Page
    {
          
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // 1. Get values from TextBoxes
            string firstName = txtName.Text.Trim();
            string lastName = txtLastName.Text.Trim();
            string location = txtLocation.Text.Trim();
            string email = txtEmail.Text.Trim();
            string phone = txtPhone.Text.Trim();

            // 2. Validate required fields
            if (string.IsNullOrEmpty(firstName) ||
                string.IsNullOrEmpty(email) ||string.IsNullOrEmpty(location)
                || string.IsNullOrEmpty(lastName)|| string.IsNullOrEmpty(phone))

            {

                lblMsg.Text = "⚠️ Please fill in all required fields.";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }
            //validate email
            string pattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";

            if (!Regex.IsMatch(email, pattern))
            {
                lblMsg.Text = "Invalid email format";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }
            //validate phonenumber
            string pattern2 = @"^\+\d{1,3}\d{3,13}$";
            if (!Regex.IsMatch(phone, pattern2)) {
                lblMsg.Text = "Invalid Phone Number format ( must contains country code followed by your  phone number) ";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }




            // 4. Connection String
            string connStr =
                ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

            // 5. Open Connection
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                try
                {
                    conn.Open();

                    

                    // 7. INSERT Query
                    string insertQuery =
                        "INSERT INTO academy_form " +
                        "( firstname, lastname, email, location, phone_number) " +
                        "VALUES ( @fn, @ln, @em, @loc, @ph)";

                    // 8. Create Command
                    using (SqlCommand cmdInsert =
                           new SqlCommand(insertQuery, conn))
                    {
                        // 9. Parameters
                        cmdInsert.Parameters.AddWithValue("@fn", firstName);
                        cmdInsert.Parameters.AddWithValue("@ln", lastName);
                        cmdInsert.Parameters.AddWithValue("@em", email);
                        cmdInsert.Parameters.AddWithValue("@loc", location);
                        cmdInsert.Parameters.AddWithValue("@ph", phone);

                        // 10. Execute INSERT
                        cmdInsert.ExecuteNonQuery();
                    }

                    // 11. Success Message
                    lblMsg.Text =
                        "✅ Registration Successful!";

                    lblMsg.ForeColor = System.Drawing.Color.Green;

                    // 12. Clear TextBoxes
                    txtName.Text = "";
                    txtLastName.Text = "";
                    txtLocation.Text = "";
                    txtEmail.Text = "";
                    txtPhone.Text = "";
                }
                catch (Exception ex)
                {
                    // Error Message
                    lblMsg.Text = "❌ Error: " + ex.Message;
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                }
                Session["firstName"] = firstName;
                Session["lastName"] = lastName;
                Response.Redirect("Welcome.aspx");
            }
        }
    }
    }
