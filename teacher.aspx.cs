using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace project
{
    public partial class teacher : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "" ||
                txtFamily.Text == "" ||
                txtAge.Text == "" ||
                txtPhone.Text == "" ||
                txtEmail.Text == "" ||
                txtAddress.Text == "" ||
                txtDegree.Text == "" ||
                ddlSubject.SelectedValue == "" ||
                txtExperience.Text == "")
            {
                lblResult.Text = "⚠️ Please fill all fields";
                return;
            }

            int age;
            if (!int.TryParse(txtAge.Text, out age))
            {
                lblResult.Text = "⚠️ Age must be a number";
                return;
            }

            if (age < 18 || age > 70)
            {
                lblResult.Text = "⚠️ Invalid age (18-70 only)";
                return;
            }

            if (!txtEmail.Text.Contains("@") || !txtEmail.Text.Contains("."))
            {
                lblResult.Text = "⚠️ Invalid email format";
                return;
            }

            if (!fileCV.HasFile)
            {
                lblResult.Text = "⚠️ Please upload your CV";
                return;
            }

            string ext = System.IO.Path.GetExtension(fileCV.FileName).ToLower();
            if (ext != ".pdf" && ext != ".doc" && ext != ".docx")
            {
                lblResult.Text = "⚠️ Only PDF or Word files allowed";
                return;
            }
            string connStr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

            // save file
            string fileName = fileCV.FileName;
            string path = "~/CVs/" + fileName;
            fileCV.SaveAs(Server.MapPath(path));

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                string query = @"INSERT INTO Teachers
    (full_name, family_name, age, phone, email, address, degree, subject, experience, cv_path)
    VALUES
    (@name, @family, @age, @phone, @mail, @address, @degree, @subject, @exp, @cv)";

                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@family", txtFamily.Text);
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(txtAge.Text));
                cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
                cmd.Parameters.AddWithValue("@mail", txtEmail.Text);
                cmd.Parameters.AddWithValue("@address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@degree", txtDegree.Text);
                cmd.Parameters.AddWithValue("@subject", ddlSubject.SelectedValue);
                cmd.Parameters.AddWithValue("@exp", txtExperience.Text);
                cmd.Parameters.AddWithValue("@cv", path);

                cmd.ExecuteNonQuery();
            }

            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text = "✅ Registered Successfully!";

            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text = "✅ Application submitted successfully!";
        }

    }

}