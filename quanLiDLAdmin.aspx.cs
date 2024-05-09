using System;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class duLieu____________ : System.Web.UI.Page
{
    string CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridView();
        }
    }

    private void BindGridView()
    {
        DataTable dt = new DataTable();
        using (SqlConnection connection = new SqlConnection(CS))
        {
            connection.Open();
            string sqlCommandText = @"
                SELECT 
                    P.ProductID, 
                    P.ProducName, 
                    P.ProductPrice, 
                    P.ProductSetPrice, 
                    P.ProductQuantity, 
                    STRING_AGG(CONCAT(PI.Name, PI.Extention), ', ') AS ImageNames
                FROM 
                    Products P 
                LEFT JOIN 
                    ProductImages PI ON P.ProductID = PI.ProductID
                GROUP BY 
                    P.ProductID, 
                    P.ProducName, 
                    P.ProductPrice, 
                    P.ProductSetPrice, 
                    P.ProductQuantity;
            ";

                        using (SqlCommand cmd = new SqlCommand(sqlCommandText, connection))
                        {
                            SqlDataAdapter da = new SqlDataAdapter(cmd);
                            da.Fill(dt);
                        }

        }
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindGridView();
    }

    

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        int ProductID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        string ProducName = ((TextBox)row.FindControl("txtProductName")).Text;
        string ProductPrice = ((TextBox)row.FindControl("txtProductPrice")).Text;
        string ProductSetPrice = ((TextBox)row.FindControl("txtProductSetPrice")).Text;
        string ProductQuantity = ((TextBox)row.FindControl("txtProductQuantity")).Text;


        using (SqlConnection connection = new SqlConnection(CS))
        {
            connection.Open();
            using (SqlCommand cmd = new SqlCommand("UPDATE Products SET ProducName = @ProducName, ProductPrice = @ProductPrice, ProductSetPrice = @ProductSetPrice, ProductQuantity = @ProductQuantity WHERE ProductID = @ProductID", connection))
            {
                cmd.Parameters.AddWithValue("@ProducName", ProducName);
                cmd.Parameters.AddWithValue("@ProductPrice", ProductPrice);
                cmd.Parameters.AddWithValue("@ProductSetPrice", ProductSetPrice);
                cmd.Parameters.AddWithValue("@ProductQuantity", ProductQuantity);
                //cmd.Parameters.AddWithValue("@ImageURL", imageUrl);
                cmd.Parameters.AddWithValue("@ProductID", ProductID);
                cmd.ExecuteNonQuery();
            }
        }

        GridView1.EditIndex = -1;
        BindGridView();
    }

    private string GetImageNamesForID(int ProductID)
    {
        string imageNames = string.Empty;
        using (SqlConnection connection = new SqlConnection(CS))
        {
            connection.Open();
            using (SqlCommand cmd = new SqlCommand("SELECT STRING_AGG(CONCAT(Name, Extention), ', ') FROM ProductImages WHERE ProductID = @ProductID", connection))
            {
                cmd.Parameters.AddWithValue("@ProductID", ProductID);
                imageNames = (string)cmd.ExecuteScalar();
            }
        }
        return imageNames;
    }



    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGridView();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int ProductID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

        using (SqlConnection connection = new SqlConnection(CS))
        {
            connection.Open();

            // Xóa các hình ảnh liên quan từ bảng 'ProductImages'
            using (SqlCommand cmdDeleteImages = new SqlCommand("DELETE FROM ProductImages WHERE ProductID = @ProductID", connection))
            {
                cmdDeleteImages.Parameters.AddWithValue("@ProductID", ProductID);
                cmdDeleteImages.ExecuteNonQuery();
            }

            // Sau đó, xóa sản phẩm từ bảng 'Products'
            using (SqlCommand cmdDeleteProduct = new SqlCommand("DELETE FROM Products WHERE ProductID = @ProductID", connection))
            {
                cmdDeleteProduct.Parameters.AddWithValue("@ProductID", ProductID);
                cmdDeleteProduct.ExecuteNonQuery();
            }
        }

        BindGridView();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        // Xử lý sự kiện nút lưu (nếu có)
    }
}
