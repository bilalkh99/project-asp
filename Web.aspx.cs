using System;
using System.Web.UI.WebControls;

namespace project
{
    public partial class web : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int score = 0;
            RadioButtonList[] questions = {
                q1, q2, q3, q4, q5, q6, q7, q8, q9, q10,
                q11, q12, q13, q14, q15, q16, q17, q18, q19, q20
            };

            foreach (var q in questions)
            {
                if (q.SelectedValue == "A")
                {
                    score++;
                }
            }

            lblResult.Visible = true;
            lblResult.Text = "Your Score: " + score + " / 20";
            lblResult.ForeColor = System.Drawing.Color.Cyan;

            btnRegisterNow.Visible = true;

            btnSubmit.Visible = false;
        }

        protected void regnow(object sender, EventArgs e)
        {
            Response.Redirect("academyform.aspx");
        }
    }
}