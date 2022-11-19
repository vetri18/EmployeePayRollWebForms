using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayrollForm.WebForms
{
    public partial class HomePage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PayRollForm.aspx");
        }
        static string connectionstring = ConfigurationManager.ConnectionStrings["MyDbconnection"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionstring);

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            connection.Open();
            SqlCommand command = new SqlCommand("delete from employee_payroll where emp_id='" + id + "'", connection);
            int t = command.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Data is Deleted')</script>");
                GridView1.EditIndex = -1;
                GridView1.DataBind();
            }
        }
    }
}




