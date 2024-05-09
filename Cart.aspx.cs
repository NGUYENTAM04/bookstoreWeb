using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            BindCartProduct();
        }
    }

    private void BindCartProduct()
    {
        if (Request.Cookies["CartProductID"] != null)
        {
            string CookieData = Request.Cookies["CartProductID"].Value.Split('=')[1];
            string[] CookieDataArray = CookieData.Split(',');
            if(CookieDataArray.Length > 0)
            {
                h5NoItem.InnerText =  "Giỏ hàng của bạn (" + CookieDataArray.Length + " sản phẩm)";
                DataTable dt = new DataTable();
                Int64 CartTotal = 0;
                Int64 Total = 0;
                for ( int i= 0; i < CookieDataArray.Length;i++)
                {
                    string ProductID = CookieDataArray[i].ToString().Split('-')[0];
                    string QuantityID = CookieDataArray[i].ToString().Split('-')[1];

                    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        using (SqlCommand cmd = new SqlCommand("select A.*,FORMAT((A.ProductPrice - A.ProductSetPrice) / A.ProductPrice * 100, 'N0') AS DiscAmount, FORMAT((ProductPrice - ProductSetPrice) / ProductPrice * 100, 'N0') AS DiscAmount  ,FORMAT((ProductPrice ), 'N0') AS _ProductPrice,FORMAT((ProductSetPrice ), 'N0') AS _ProductSetPrice,dbo.getValueQuantity(" + ProductID + ") as ValueQuantityy," + QuantityID +
                            " as QuantityIDD,SizeData.Name,SizeData.Extention from Products A  cross apply \r\n(\r\n\tselect top 1 B.Name, Extention " +
                            "from  ProductImages B where B.ProductID = A.ProductID\r\n) SizeData where A.ProductID = " + ProductID + "", con)) 
                        {
                            cmd.CommandType = CommandType.Text;

                            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                            {
                                //DataTable dt = new DataTable();
                                sda.Fill(dt);
                                //rptrProductDetails.DataSource = dt;
                                //rptrProductDetails.DataBind();
                            }

                        }
                    }
                    CartTotal += Convert.ToInt64(dt.Rows[i]["ProductPrice"]);
                    Total += Convert.ToInt64(dt.Rows[i]["ProductSetPrice"]);

                }
                rptrCartProducts.DataSource = dt;
                rptrCartProducts.DataBind();

                rptrCartProducts_.DataSource = dt;
                rptrCartProducts_.DataBind();

                //divPriceDetail.Visible = true;


                spanCartTotal.InnerText = CartTotal.ToString("N0");
                spanTotal.InnerText = Total.ToString("N0");
                spanDiscount.InnerText = (CartTotal - Total).ToString("N0");

            }
            else
            {
                h5NoItem.InnerText = "Giỏ hàng của bạn hiện đang trống";
                //divPriceDetail.Visible = false;
            }
        }
        else
        {
            h5NoItem.InnerText = "Giỏ hàng của bạn hiện đang trống";
            //divPriceDetail.Visible = false;
        }
    }

    protected void btRemoveItem_Click(object sender, EventArgs e)
    {
        string CookieProductID = Request.Cookies["CartProductID"].Value.Split('=')[1];
        Button btn = (Button)sender;
        string ProductIDQuantity = btn.CommandArgument;

        List<string> CookieProductIDList = CookieProductID.Split(',').Select(x => x.Trim()).Where(i => i != string.Empty).ToList();
        CookieProductIDList.Remove(ProductIDQuantity);
        string CookieProductIDUpdated = String.Join(",", CookieProductIDList.ToArray());

        if (CookieProductIDUpdated == "")
        {
            HttpCookie CartProduct = new HttpCookie("CartProductID");
            CartProduct.Values["CartProductID"] = null;
            CartProduct.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(CartProduct);
        }
        else
        {
            HttpCookie CartProduct = new HttpCookie("CartProductID");
            CartProduct.Values["CartProductID"] = CookieProductIDUpdated;
            CartProduct.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(CartProduct);

        }

        Response.Redirect("Cart.aspx" );

    }

    protected void btnBuyNow_Click(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            Response.Redirect("Payment.aspx");
        }
        else
        {
            Response.Redirect("formDangNhap.aspx");
        }
    }

    protected void btRemoveItemDetail_Click(object sender, EventArgs e)
    {
        string CookieProductID = Request.Cookies["CartProductID"].Value.Split('=')[1];
        Button btn = (Button)sender;
        string ProductIDQuantity = btn.CommandArgument;

        List<string> CookieProductIDList = CookieProductID.Split(',').Select(x => x.Trim()).Where(i => i != string.Empty).ToList();
        CookieProductIDList.Remove(ProductIDQuantity);
        string CookieProductIDUpdated = String.Join(",", CookieProductIDList.ToArray());

        if (CookieProductIDUpdated == "")
        {
            HttpCookie CartProduct = new HttpCookie("CartProductID");
            CartProduct.Values["CartProductID"] = null;
            CartProduct.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(CartProduct);
        }
        else
        {
            HttpCookie CartProduct = new HttpCookie("CartProductID");
            CartProduct.Values["CartProductID"] = CookieProductIDUpdated;
            CartProduct.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(CartProduct);

        }

        Response.Redirect("Cart.aspx");
    }
}