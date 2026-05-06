using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void btncs_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("dQuestions.aspx");
        }

        protected void btnEng_Click(object sender, EventArgs e)
        {
            string field = ddlEng.SelectedValue;

            switch (field)
            {
                case "CE":
                    Response.Redirect("CE.aspx");
                    break;

                case "EE":
                    Response.Redirect("EE.aspx");
                    break;

                case "ME":
                    Response.Redirect("ME.aspx");
                    break;

                case "Civil":
                    Response.Redirect("civil.aspx");
                    break;

                case "Telecom":
                    Response.Redirect("telecom.aspx");
                    break;

                case "IE":
                    Response.Redirect("IE.aspx");
                    break;

                default:
                    Response.Write("Please select a valid field");
                    break;
            }
        }
        protected void btnDoc_Click(object sender, EventArgs e)
        {
            Response.Redirect("Questions.aspx");
        }

        protected void btnFree_Click(object sender, EventArgs e)
        {
            Response.Redirect("Questions.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}