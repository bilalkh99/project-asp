using System;

namespace project
{
    public partial class dQuestions : System.Web.UI.Page
    {
        protected void btnResult_Click(object sender, EventArgs e)
        {
            int score = 0;

            score += GetScore(q1.SelectedValue);
            score += GetScore(q2.SelectedValue);
            score += GetScore(q3.SelectedValue);

            if (score >= 5)
                lblResult.Text = "🔥 You are PERFECT for Developer 👨‍💻";
            else if (score >= 3)
                lblResult.Text = "🟡 You can become a Developer with practice";
            else
                lblResult.Text = "🔴 Developer may not suit you";
        }

        int GetScore(string answer)
        {
            if (answer == "A") return 2;
            if (answer == "B") return 1;
            return 0;
        }
    }
}