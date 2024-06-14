using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration; 

namespace Form_Inline_Method
{
    public partial class Records : System.Web.UI.Page
    {
        public SqlConnection SqlConnection;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection = new SqlConnection();
            SqlConnection.ConnectionString = ConfigurationManager.ConnectionStrings["WEB"].ConnectionString;
            if(SqlConnection.State == ConnectionState.Closed)
            {
                SqlConnection.Open();
            }
            string com = "SELECT Id, First_Name AS FirstName, Last_Name AS LastName, Gender, Age, subject AS Subject from Inline_method";
            SqlDataAdapter da = new SqlDataAdapter(com,SqlConnection);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.DataBind();
        }
    }
}