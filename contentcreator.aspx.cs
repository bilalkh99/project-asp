using System;

namespace project
{
    public partial class contentcreator : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int score = 0;

            if (q1.SelectedValue == "A") score++;
            if (q2.SelectedValue == "A") score++;
            if (q3.SelectedValue == "A") score++;
            if (q4.SelectedValue == "A") score++;
            if (q5.SelectedValue == "A") score++;
            if (q6.SelectedValue == "A") score++;
            if (q7.SelectedValue == "A") score++;
            if (q8.SelectedValue == "A") score++;
            if (q9.SelectedValue == "A") score++;
            if (q10.SelectedValue == "A") score++;

            if (score <= 3)
                lblResult.Text = "🔴 Level 0 - Beginner (Needs Basics)";
            else if (score <= 6)
                lblResult.Text = "🟡 Level 1 - Basic Content Creator";
            else if (score <= 8)
                lblResult.Text = "🟢 Level 2 - Good Level";
            else
                lblResult.Text = "🔵 Level 3 - Advanced Content Creator 🚀";

            btnRegisterNow.Visible = true;
        }

        protected void regnow(object sender, EventArgs e)
        {
            Response.Redirect("academyform.aspx");
        }
    }
}