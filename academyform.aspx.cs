using System;
using System.Xml.Linq;

namespace project
{
    public partial class academyform : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            lblMsg.Text = "✅ Welcome " + txtName.Text + " to Open Skills Academy!";
        }
    }
}