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
using System.Security.Policy;
using System.Xml.Linq;

public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            if(!IsPostBack)
            {
                BindPriceData();
            }
        }
        else
        {
            Response.Redirect("formDangNhap.aspx");
        }
    }

    private void BindPriceData()
    {
        if (Request.Cookies["CartProductID"] != null)
        {
            string CookieData = Request.Cookies["CartProductID"].Value.Split('=')[1];
            string[] CookieDataArray = CookieData.Split(',');
            if (CookieDataArray.Length > 0)
            {
                //h5NoItem.InnerText = "Giỏ hàng của bạn (" + CookieDataArray.Length + " sản phẩm)";
                DataTable dt = new DataTable();
                Int64 CartTotal = 0;
                Int64 Total = 0;
                for (int i = 0; i < CookieDataArray.Length; i++)
                {
                    string ProductID = CookieDataArray[i].ToString().Split('-')[0];
                    string QuantityID = CookieDataArray[i].ToString().Split('-')[1];

                    if(hdPiQuantityID.Value != null && hdPiQuantityID.Value != "")
                    {
                        hdPiQuantityID.Value += "," + ProductID + "-" + QuantityID;
                    }

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
                //rptrCartProducts.DataSource = dt;
                //rptrCartProducts.DataBind();

                rptrCartProducts_.DataSource = dt;
                rptrCartProducts_.DataBind();

                //divPriceDetail.Visible = true;


                spanCartTotal.InnerText = CartTotal.ToString("N0");
                spanTotal.InnerText = Total.ToString("N0");
                spanDiscount.InnerText = (CartTotal - Total).ToString("N0");


                hdCartAmount.Value = CartTotal.ToString("N0");
                hdCartDiscount.Value = (CartTotal - Total).ToString("N0");
                hdTotalPayed.Value = Total.ToString("N0");

            }
            else
            {
                //h5NoItem.InnerText = "Giỏ hàng của bạn hiện đang trống";
                Response.Redirect("sachThieuNhi.aspx");
            }
        }
        else
        {
            //h5NoItem.InnerText = "Giỏ hàng của bạn hiện đang trống";
            Response.Redirect("sachThieuNhi.aspx");
        }
    }

    protected void btnPaytm_Click(object sender, EventArgs e)
    {

        if(Session["USERID"] != null)
        {
            string USERID = Session["USERID"].ToString();
            string PaymentType = "Thanh toán bằng Paytm";
            string PaymentStatus = "Không trả tiền";
            DateTime DateOfPurchase = DateTime.Now;
            string EmailID = Session["USEREMAIL"].ToString();


            //Thêm dữ liệu cho bảng Purchase
            String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("insert into Purchase values('" + USERID+"','"+hdPiQuantityID.Value+"','"+hdCartAmount.Value+"','"+hdCartDiscount.Value+"','" +
                    hdTotalPayed.Value+"','"+PaymentType+"','"+PaymentStatus+"','"+ DateOfPurchase + "',N'"+txtName.Text+"',N'"+txtAddress.Text+"','"+txtPinCode.Text+"') select SCOPE_IDENTITY()",con);

                con.Open();
                Int64 PurchaseID = Convert.ToInt64(cmd.ExecuteScalar());
                //payment(EmailID, USERID,PurchaseID.ToString(),hdTotalPayed.Value);
            }

        }
        else
        {
            Response.Redirect("formDangNhap.aspx");
        }


        //CREATE TABLE[dbo].[Purchase] (
        //    [PurchaseID]        BIGINT IDENTITY(1, 1) NOT NULL,
        //    [UserID]           INT NULL,
        //    [ProductQuantityID] NVARCHAR(MAX) NULL,
        //    [CartAmount] MONEY NULL,
        //    [CartDiscount]      MONEY NULL,
        //    [TotalPayed]        MONEY NULL,
        //    [PaymentType]       NVARCHAR(50)  NULL,
        //    [PaymentStatus] NVARCHAR(50)  NULL,
        //    [DateOfPurchase] DATETIME NULL,
        //    [Name]              NVARCHAR(MAX) NULL,
        //    [Address] NVARCHAR(MAX) NULL,
        //    [PinCode] NVARCHAR(50)  NULL,
        //    PRIMARY KEY CLUSTERED([PurchaseID] ASC),
        //    CONSTRAINT[FK_Purchase_ToUsers] FOREIGN KEY([UserID]) REFERENCES[dbo].[Users2]([Id])
        //);
    }

    protected void btnPaytm_Click1(object sender, EventArgs e)
    {
        if (Session["USERID"] != null)
        {
            string USERID = Session["USERID"].ToString();
            string PaymentType = "Thanh toán bằng Paytm";
            string PaymentStatus = "Không trả tiền";

            //DateTime DateOfPurchase = DateTime.Now;
            //string formattedDate = DateOfPurchase.ToString("dd-MM-yyy HH:mm:ss"); // Định dạng ngày tháng đúng

            //string EmailID = Session["USEREMAIL"].ToString();


            ////Thêm dữ liệu cho bảng Purchase
            //String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
            //using (SqlConnection con = new SqlConnection(CS))
            //{
            //    //SqlCommand cmd = new SqlCommand("insert into Purchase values('" + USERID + "','" + hdPiQuantityID.Value + "','" + hdCartAmount.Value + "','" + hdCartDiscount.Value + "','" 
            //    //    +hdTotalPayed.Value + "','" + PaymentType + "','" + PaymentStatus + "','" + formattedDate + "',N'" + txtName.Text + "',N'" + txtAddress.Text + "','" + txtPinCode.Text + "') select SCOPE_IDENTITY() ", con);


            //    con.Open();
            //    Int64 PurchaseID = Convert.ToInt64(cmd.ExecuteScalar());
            //    //payment(EmailID, USERID,PurchaseID.ToString(),hdTotalPayed.Value);
            //}

            DateTime DateOfPurchase = DateTime.Now;
            string formattedDate = DateOfPurchase.ToString("yyyy-MM-dd HH:mm:ss"); // Định dạng ngày tháng đúng

            String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO Purchase (UserID, ProductQuantityID, CartAmount, CartDiscount, TotalPayed, PaymentType, PaymentStatus, DateOfPurchase, Name, Address, PinCode) VALUES (@USERID, @hdPiQuantityID, @hdCartAmount, @hdCartDiscount, @hdTotalPayed, @PaymentType, @PaymentStatus, @DateOfPurchase, @txtName, @txtAddress, @txtPinCode); SELECT SCOPE_IDENTITY()", con);
                cmd.Parameters.AddWithValue("@USERID", USERID);
                cmd.Parameters.AddWithValue("@hdPiQuantityID", hdPiQuantityID.Value);
                cmd.Parameters.AddWithValue("@hdCartAmount", hdCartAmount.Value);
                cmd.Parameters.AddWithValue("@hdCartDiscount", hdCartDiscount.Value);
                cmd.Parameters.AddWithValue("@hdTotalPayed", hdTotalPayed.Value);
                cmd.Parameters.AddWithValue("@PaymentType", PaymentType);
                cmd.Parameters.AddWithValue("@PaymentStatus", PaymentStatus);
                cmd.Parameters.AddWithValue("@DateOfPurchase", formattedDate);
                cmd.Parameters.AddWithValue("@txtName", txtName.Text);
                cmd.Parameters.AddWithValue("@txtAddress", txtAddress.Text);
                cmd.Parameters.AddWithValue("@txtPinCode", txtPinCode.Text);

                Int64 PurchaseID = Convert.ToInt64(cmd.ExecuteScalar());
                //payment(EmailID, USERID, PurchaseID.ToString(), hdTotalPayed.Value);
                Pay_infor.Visible =true;
                //Response.Redirect("trangChu.aspx");
            }

        }
        else
        {
            Response.Redirect("formDangNhap.aspx");
        }
    }
}