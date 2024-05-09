using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Activities.Expressions;

public partial class ProductView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            BillProductImage();
            BindProductDetail();
        }
    }

    private void BillProductImage()
    {
        Int64 ProductID = Convert.ToInt64(Request.QueryString["ProductID"]);

        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from ProductImages  where ProductID = "+ ProductID+"" , con))
            {
                cmd.CommandType = CommandType.Text;

                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrImages.DataSource = dt;
                    rptrImages.DataBind();
                }

            }
        }
    }

    private void BindProductDetail()
    {
        Int64 ProductID = Convert.ToInt64(Request.QueryString["ProductID"]);

        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select *, FORMAT((ProductPrice - ProductSetPrice) / ProductPrice * 100, 'N0') AS DiscAmount  ,FORMAT((ProductPrice ), 'N0') AS _ProductPrice,FORMAT((ProductSetPrice ), 'N0') AS _ProductSetPrice from Products where ProductID = " + ProductID + "", con))
            {
                cmd.CommandType = CommandType.Text;

                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrProductDetails.DataSource = dt;
                    rptrProductDetails.DataBind();
                }

            }
        }
    }

    

    protected void btnAddtoCart_Click(object sender, EventArgs e)
    {
        String SelectedQuantity = "";
        foreach (RepeaterItem item in rptrProductDetails.Items)
        {
            if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
            {
                var txtQuantity = item.FindControl("txtQuantity") as TextBox;
                SelectedQuantity = txtQuantity.Text;
            }
        }

        if (SelectedQuantity != "")
        {
            Int64 ProductID = Convert.ToInt64(Request.QueryString["ProductID"]);
            if (Request.Cookies["CartProductID"] != null)
            {
                String CookieProductID = Request.Cookies["CartProductID"].Value.Split('=')[1];
                CookieProductID = CookieProductID + "," + ProductID + "-" + SelectedQuantity;

                HttpCookie CartProduct = new HttpCookie("CartProductID");
                CartProduct.Values["CartProductID"] = CookieProductID;
                CartProduct.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProduct);
            }
            else
            {
                HttpCookie CartProduct = new HttpCookie("CartProductID");
                CartProduct.Values["CartProductID"] = ProductID.ToString() + "-" + SelectedQuantity;
                CartProduct.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProduct);

            }
            Response.Redirect("ProductView.aspx?ProductID=" + ProductID);


        }
        else
        {
            foreach (RepeaterItem item in rptrProductDetails.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    var lblError = item.FindControl("lblError") as Label;
                    lblError.Text = "Vui lòng chọn số lượng sản phẩm";
                }
            }
        }

    }

}