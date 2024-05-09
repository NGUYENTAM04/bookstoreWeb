using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Text.RegularExpressions;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();
        BindProductsRepeater();
       

    }

 

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        string searchTerm = txtSearch.Text;

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            string query = "SELECT * FROM Products WHERE ProducName LIKE '%' + @searchTerm + '%'";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@searchTerm", searchTerm);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            // Bây giờ bạn có DataTable chứa các kết quả tìm kiếm
            // Sử dụng dt để hiển thị hoặc xử lý kết quả theo ý muốn.
        }
    }

    private void BindProductsRepeater()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("proBindAllProducts", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrProducts_.DataSource = dt;
                    rptrProducts_.DataBind();

                    Repeater1.DataSource = dt;
                    Repeater1.DataBind();
                }

            }
        }
    }

    private void BindCartNumber()
    {
        if (Request.Cookies["CartProductID"] != null)
        {
            string CookieProductID = Request.Cookies["CartProductID"].Value.Split('=')[1];
            string[] ProductArray = CookieProductID.Split(',');
            int ProductCount = ProductArray.Length;


            productCount.InnerText = ProductCount.ToString();
        }
        else
        {
            productCount.InnerText = 0.ToString();

        }
    }

    //protected void txtSearch_TextChanged(object sender, EventArgs e)
    //{
    //    string connectionString = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    //    string searchTerm = txtSearch.Text;

    //    using (SqlConnection connection = new SqlConnection(connectionString))
    //    {
    //        connection.Open();

    //        string query = "SELECT * FROM Products WHERE ProducName LIKE '%' + @searchTerm + '%'";
    //        SqlCommand cmd = new SqlCommand(query, connection);
    //        cmd.Parameters.AddWithValue("@searchTerm", searchTerm);

    //        DataTable dt = new DataTable();
    //        SqlDataAdapter da = new SqlDataAdapter(cmd);
    //        da.Fill(dt);

    //        // Bây giờ bạn có DataTable chứa các kết quả tìm kiếm
    //        // Sử dụng dt để hiển thị hoặc xử lý kết quả theo ý muốn.
    //    }
    //}
}