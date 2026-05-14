using System;
using System.Web;

namespace project
{
    public partial class loginadmin : System.Web.UI.Page
    {
        protected void btnLoginAdmin_Click(object sender, EventArgs e)
        {
            string user = txtAdminUser.Text.Trim();
            string pass = txtAdminPass.Text.Trim();

            if (user == "admin_bilal" && pass == "Lu@2026")
            {
                Session["IsAdmin"] = "true";
                Session["AdminName"] = user;

                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {
                lblStatus.Text = "❌ Invalid Admin Access!";
            }
        }
    }
}