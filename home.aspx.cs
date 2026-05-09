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
        //CS
        protected void btncs_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("dQuestions.aspx");
        }

        // eng
        protected void btnEng_Click(object sender, EventArgs e)
        {
            string field = ddlEng.SelectedValue;

            switch (field)
            {
                case "CE":
                    Session["field"] = "CE";
                    Response.Redirect("CE.aspx");
                    break;

                case "EE":
                    Session["field"] = "EE";
                    Response.Redirect("EE.aspx");
                    break;


                case "Civil":
                    Session["field"] = "civil";
                    Response.Redirect("civil.aspx");
                    break;

                case "Telecom":
                    Session["field"] = "Telecom";
                    Response.Redirect("telecom.aspx");
                    break;

                default:
                    Response.Write("Please select a valid field");
                    break;
            }
        }
        protected void btntech_Click(object sender, EventArgs e)
        {
            Response.Redirect("teacher.aspx");
        }

        //FREE
        protected void btnFree_Click(object sender, EventArgs e)
        {
            Response.Redirect("Questions.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}