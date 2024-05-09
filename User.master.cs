using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();
        if (Session["USERNAME"] != null)
        {
            btnUserLogOut.Visible = true;
            itemUserLogOut.Visible = true;

            btnUserLogIn.Visible = false;
            //lblSuccess.Text = "Login Success, Welcome " + Session["USERNAME"].ToString()+"";
        }
        else
        {
            btnUserLogOut.Visible = false;
            itemUserLogOut.Visible = false;

            btnUserLogIn.Visible = true;
        }
    }



    protected void btnUserLogOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/trangChu.aspx");
    }



    protected void btnUserLogIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/formDangNhap.aspx");
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

    //protected void btnSearch_Click(object sender, EventArgs e)
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

    //protected void btnSearch_Click(object sender, EventArgs e)
    //{
    //    string connectionString = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    //    string searchTerm = txtSearch.Text;
    //    Int64 ProductID = Convert.ToInt64(Request.QueryString["ProductID"]);

    //    //if (HttpContext.Current.Request.QueryString["ProducName"] != null)
    //    //{
    //    //    string ProducName = HttpContext.Current.Request.QueryString["ProducName"];
    //    //    // Bây giờ bạn có thể sử dụng ProducName trong mã của mình
    //    //}
    //    //else
    //    //{
    //    //    // Xử lý khi "ProducName" không có trong URL hoặc có giá trị null
    //    //}


    //    using (SqlConnection connection = new SqlConnection(connectionString))
    //    {
    //        connection.Open();

    //        string query = "SELECT * FROM Products WHERE ProductID=" + ProductID +"and ProducName LIKE '%' + @searchTerm + '%'";
    //        SqlCommand cmd = new SqlCommand(query, connection);
    //        cmd.Parameters.AddWithValue("@searchTerm", searchTerm);

    //        DataTable dt = new DataTable();
    //        SqlDataAdapter da = new SqlDataAdapter(cmd);
    //        da.Fill(dt);
    //        Response.Redirect("ProductView.aspx?ProductID=" + ProductID);

    //        // Bây giờ bạn có DataTable chứa các kết quả tìm kiếm
    //        // Sử dụng dt để hiển thị hoặc xử lý kết quả theo ý muốn.
    //    }
    //}

    //protected void btnSearch_Click(object sender, EventArgs e)
    //{
    //string searchKeyword = txtSearch.Text;

    //// Thực hiện tìm kiếm gần đúng trong danh sách sản phẩm
    //List<Product> searchResults = productList.Where(product => product.ProductName.Contains(searchKeyword)).ToList();

    //// Gán kết quả tìm kiếm cho repeater và hiển thị trên trang
    //rptrProducts.DataSource = searchResults;
    //    rptrProducts.DataBind();

    //}

}
