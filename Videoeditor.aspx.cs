using System;
using System.Web.UI.WebControls;

namespace project
{
    public partial class Videoeditor : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int score = 0;

            RadioButtonList[] questions = {
                q1, q2, q3, q4, q5, q6, q7, q8, q9, q10
            };

            foreach (var q in questions)
            {
                if (q.SelectedValue == "A")
                {
                    score++;
                }
            }

            string result;
            System.Drawing.Color resultColor;

            if (score <= 7)
            {
                result = "🔴 Level 0 - Needs Basics Courses";
                resultColor = System.Drawing.Color.Red;
            }
            else if (score <= 13)
            {
                result = "🟡 Level 1 - Needs Basics Courses";
                resultColor = System.Drawing.Color.Yellow;
            }
            else if (score <= 17)
            {
                result = "🟢 Level 2 - Professional";
                resultColor = System.Drawing.Color.LightGreen;
            }
            else
            {
                result = "🔵 Level 3 - You can join in advanced courses";
                resultColor = System.Drawing.Color.Cyan;
            }

            lblResult.Visible = true;
            lblResult.Text = "Score: " + score + "/10 <br />" + result;
            lblResult.ForeColor = resultColor;

            btnRegisterNow.Visible = true;
            btnSubmit.Visible = false;
        }

        protected void regnow(object sender, EventArgs e)
        {
            Response.Redirect("academyform.aspx");
        }
    }
}