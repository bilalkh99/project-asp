using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace project
{
    public partial class academyform : System.Web.UI.Page
    {

            protected void Page_Load(object sender, EventArgs e)
            {
            }

            protected void btnRegister_Click(object sender, EventArgs e)
            {
                string firstName = txtName.Text.Trim();
                string lastName = txtLastName.Text.Trim();
                string location = txtLocation.Text.Trim();
                string email = txtEmail.Text.Trim();
                string phone = txtPhone.Text.Trim();

                if (string.IsNullOrEmpty(firstName) || string.IsNullOrEmpty(email))
                {
                    lblMsg.Text = "⚠️ Please fill in all required fields.";
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                string connStr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    try
                    {
                        conn.Open();

                        int newId = 1;

                        string getMaxIdQuery = "SELECT ISNULL(MAX(id), 0) FROM academy_form";
                        using (SqlCommand cmdMax = new SqlCommand(getMaxIdQuery, conn))
                        {
                            object result = cmdMax.ExecuteScalar();
                            if (result != null && result != DBNull.Value)
                            {
                                newId = Convert.ToInt32(result) + 1;
                            }
                        }

                        string insertQuery = "INSERT INTO academy_form (id, firstname, lastname, email, location, phone_number) " +
                                             "VALUES (@id, @fn, @ln, @em, @loc, @ph)";

                        using (SqlCommand cmdInsert = new SqlCommand(insertQuery, conn))
                        {
                            cmdInsert.Parameters.AddWithValue("@id", newId);
                            cmdInsert.Parameters.AddWithValue("@fn", firstName);
                            cmdInsert.Parameters.AddWithValue("@ln", lastName);
                            cmdInsert.Parameters.AddWithValue("@em", email);
                            cmdInsert.Parameters.AddWithValue("@loc", location);
                            cmdInsert.Parameters.AddWithValue("@ph", phone);

                            cmdInsert.ExecuteNonQuery();
                        }

                        lblMsg.Text = "✅ Registration Successful! Your ID is: " + newId;
                        lblMsg.ForeColor = System.Drawing.Color.Green;

                        txtName.Text = "";
                        txtLastName.Text = "";
                        txtLocation.Text = "";
                        txtEmail.Text = "";
                        txtPhone.Text = "";
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
