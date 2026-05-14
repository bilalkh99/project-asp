using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace project
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsAdmin"] == null || Session["IsAdmin"].ToString() != "true")
            {
                Response.Redirect("loginadmin.aspx");
            }

            if (!IsPostBack) { LoadData(); }
        }

        void LoadData()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                //la a3ref esem el course 3ala tool mn el enrollments
                string query = @"SELECT E.student_id, E.course_id, C.course_name, E.status 
                                FROM Enrollments E 
                                JOIN Courses C ON E.course_id = C.course_id";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                gvEnrollments.DataSource = dt;
                gvEnrollments.DataBind();
            }
        }

        protected void gvEnrollments_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "UpdateStatus")
            {
                // 1. Get the row index of the button that was clicked
                int index = Convert.ToInt32(e.CommandArgument);
                // 3m jib primaryy keys student id w course id mn sateer te3 button li f2set 3leh
                int sid = Convert.ToInt32(gvEnrollments.DataKeys[index].Values["student_id"]);
                int cid = Convert.ToInt32(gvEnrollments.DataKeys[index].Values["course_id"]);

                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    string query = "UPDATE Enrollments SET status = 'Paid' WHERE student_id = @sid AND course_id = @cid";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@sid", sid);
                    cmd.Parameters.AddWithValue("@cid", cid);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }

                lblMsg.Text = "✅ Student ID " + sid + " updated to PAID.";
                lblMsg.ForeColor = System.Drawing.Color.Green;
                LoadData(); 
            }
        }
    }
}