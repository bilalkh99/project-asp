using System;
using System.Web.UI.WebControls;

namespace project
{
    public partial class AI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int score = 0;
            RadioButtonList[] questions = { q1, q2, q3, q4, q5 };

            foreach (var q in questions)
            {
                if (q.SelectedValue == "A")
                {
                    score++;
                }
            }

            lblResult.Visible = true;
            lblResult.Text = "Your AI Knowledge Score: " + score + " / " + questions.Length;
            lblResult.ForeColor = System.Drawing.Color.MediumPurple;

            btnRegisterNow.Visible = true;

            btnSubmit.Visible = false;
        }

        protected void regnow(object sender, EventArgs e)
        {
            Response.Redirect("academyform.aspx");
        }
    }
}