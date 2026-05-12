using System;
using System.Web.UI.WebControls;

namespace project
{
    public partial class Telecom : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int score = 0;

            // 1. تجميع الـ 20 سؤالاً في مصفوفة واحدة لاختصار الكود
            RadioButtonList[] questions = {
                q1, q2, q3, q4, q5, q6, q7, q8, q9, q10,
                q11, q12, q13, q14, q15, q16, q17, q18, q19, q20
            };

            // 2. حساب النتيجة باستخدام Loop (بدلاً من 20 سطر If)
            foreach (var q in questions)
            {
                if (q.SelectedValue == "A")
                {
                    score++;
                }
            }

            // 3. تحديد المستوى واللون بناءً على نتيجتك
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

            // 4. عرض النتيجة النهائية وتنسيق الأزرار
            lblResult.Visible = true;
            lblResult.Text = "Score: " + score + "/20 <br />" + result;
            lblResult.ForeColor = resultColor;

            btnRegisterNow.Visible = true;
            btnSubmit.Visible = false; // إخفاء زر الإرسال لعدم التكرار
        }

        protected void regnow(object sender, EventArgs e)
        {
            Response.Redirect("academyform.aspx");
        }
    }
}