using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace project
{
    public partial class welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCourses();

                string fname = Session["firstName"] != null ? Session["firstName"].ToString() : "";
                string lname = Session["lastName"] != null ? Session["lastName"].ToString() : "";

                lblWelcome.Text = "Welcome " + fname + " " + lname + " 👋";
            }
        }

        void LoadCourses()
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT course_id, course_name, price FROM Courses";

                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();

                da.Fill(dt);

                gvCourses.DataSource = dt;
                gvCourses.DataBind();
            }
        }

        protected void gvCourses_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "pay")
            {
                lblMsg.Text = "💳 Send payment to +96170545120 (WishMoney). After confirmation, course content will be sent to your email.";
            }
        }
    }
}