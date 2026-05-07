using System;

namespace project
{
    public partial class Civil : System.Web.UI.Page
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
            if (q11.SelectedValue == "A") score++;
            if (q12.SelectedValue == "A") score++;
            if (q13.SelectedValue == "A") score++;
            if (q14.SelectedValue == "A") score++;
            if (q15.SelectedValue == "A") score++;
            if (q16.SelectedValue == "A") score++;
            if (q17.SelectedValue == "A") score++;
            if (q18.SelectedValue == "A") score++;
            if (q19.SelectedValue == "A") score++;
            if (q20.SelectedValue == "A") score++;

            string result;

            if (score <= 7)
                result = "🔴 Level 0 - Needs Basics Courses)";
            else if (score <= 13)
                result = "🟡 Level 1 -needs Basics Coures";
            else if (score <= 17)
                result = "🟢 Level 2 - Professional  ";
            else
                result = "🔵 Level 3 - you can join in advanced courses";

            lblResult.Text = result;

            btnRegisterNow.Visible = true;
        }

        protected void regnow(object sender, EventArgs e)
        {
            Response.Redirect("academyform.aspx");
        }
    }
}

    

