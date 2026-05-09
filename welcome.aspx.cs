using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace project
{
    //hi
    public partial class welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Response.Write(Session["field"].ToString());
                LoadCourses();

                string fname = Session["firstName"] != null ? Session["firstName"].ToString() : "";
                string lname = Session["lastName"] != null ? Session["lastName"].ToString() : "";

                lblWelcome.Text = "Welcome " + fname + " " + lname + " 👋";
            }
        }

        void LoadCourses()
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

            if (Session["field"] == null)
            {
                Response.Redirect("home.aspx");
                return;
            }

            string field = Session["field"].ToString();

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT course_id, course_name, price FROM Courses WHERE field = @field";

                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                da.SelectCommand.Parameters.AddWithValue("@field", field);

                DataTable dt = new DataTable();
                da.Fill(dt);

                gvCourses.DataSource = dt;
                gvCourses.DataBind();
            }
        }

        protected void gvCourses_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "pay")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                int courseId = Convert.ToInt32(gvCourses.DataKeys[index].Value);

                string email = Session["email"].ToString();

                SaveEnrollment(courseId);
                lblMsg.Text = "💳 Payment instructions: Please send the required amount via Whish Money to +961 79 545 120. Once confirmed, the course content will be sent to your email." + email;
            }
        }
        void SaveEnrollment(int courseId)
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                string query = "INSERT INTO Enrollments (student_id, course_id) VALUES (@sid, @cid)";

                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@sid", Session["student_id"]);
                cmd.Parameters.AddWithValue("@cid", courseId);

                cmd.ExecuteNonQuery();
            }
        }
    }
}