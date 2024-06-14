using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace Form_Inline_Method
{
    public partial class Form : System.Web.UI.Page
    {
        public SqlConnection sqlConnection;
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btn_ClickSave(object sender, EventArgs e)
        {
            sqlConnection = new SqlConnection();
            sqlConnection.ConnectionString = ConfigurationManager.ConnectionStrings["WEB"].ConnectionString;
            if(sqlConnection.State == ConnectionState.Closed)
            {
                sqlConnection.Open();
            }
            string FirstName = fname.Value;
            string LastName = lname.Value;
            string Gender = inputState.Value;
            string Course = inputState1.Value;
            string Age = age.Value;
            string com = "INSERT INTO Inline_method(First_Name,Last_Name,Gender,Age,subject) VALUES ('"+ FirstName + "','"+ LastName + "','"+ Gender + "','"+Age+"','"+ Course + "')";
            SqlCommand cmd = new SqlCommand(com,sqlConnection);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
        }
        }
}