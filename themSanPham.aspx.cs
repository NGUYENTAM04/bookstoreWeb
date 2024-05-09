using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class themSanPham : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            BindAuthor();
            BindCategory();
            BindSubCategories();
        }
    }

    private void BindAuthor()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select* from Author", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlAuthor.DataSource = dt;
                ddlAuthor.DataTextField = "Name";
                ddlAuthor.DataValueField = "AuthorID";
                ddlAuthor.DataBind();
                ddlAuthor.Items.Insert(0, new ListItem("--LỰA CHỌN--", "0"));
            }
        }
    }

    private void BindCategory()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select* from Category", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CategoryName";
                ddlCategory.DataValueField = "CategoryID";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("--LỰA CHỌN--", "0"));
            }
        }
    }

    private void BindSubCategories()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select* from SubCategories", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlSubCategory.DataSource = dt;
                ddlSubCategory.DataTextField = "SubCategoryName";
                ddlSubCategory.DataValueField = "SubCategoryID";
                ddlSubCategory.DataBind();
                ddlSubCategory.Items.Insert(0, new ListItem("--LỰA CHỌN--", "0"));
            }
        }
    }

    protected void btAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("procInsertProducts",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ProducName",txtPName.Text);
            cmd.Parameters.AddWithValue("@ProductPrice",txtPrice.Text);
            cmd.Parameters.AddWithValue("@ProductSetPrice",txtSelling_Price.Text);
            cmd.Parameters.AddWithValue("@ProductQuantity", Convert.ToInt32(txtQuantity.Text));
            cmd.Parameters.AddWithValue("@ProductAuthorID",ddlAuthor.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@ProductCategoryID", ddlCategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@ProductSubCategoryID", ddlSubCategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@ProducDescription",txtDescription.Text);
            cmd.Parameters.AddWithValue("@ProductDetail",txtDetail.Text);

            //FreeDelivery
            if (cbFree_Delivery.Checked == true)
            {
                cmd.Parameters.AddWithValue("@FreeDelivery", 1.ToString());

            }
            else 
            {

                cmd.Parameters.AddWithValue("@FreeDelivery", 0.ToString());

            }
            //30DayReturn
            if (cb30_return.Checked == true)
            {
                cmd.Parameters.AddWithValue("@30DayReturn", 1.ToString());

            }
            else
            {

                cmd.Parameters.AddWithValue("@30DayReturn", 0.ToString());

            }
            //COD
            if (cbCode.Checked == true)
            {
                cmd.Parameters.AddWithValue("@COD", 1.ToString());

            }
            else
            {

                cmd.Parameters.AddWithValue("@COD", 0.ToString());

            }

            con.Open();
            Int64 ProductID = Convert.ToInt64(cmd.ExecuteScalar());

            // Thêm và cập nhật hình ảnh 
            //Image2
                if (fuImg01.HasFile)
                {
                    string savePath = Server.MapPath("~/anhBaiThucHanh_TranVinhXuyen/ProductImages/") + ProductID;//////
                    if (!Directory.Exists(savePath))
                    {
                        Directory.CreateDirectory(savePath);
                    }
                    string Extention = Path.GetExtension(fuImg01.PostedFile.FileName);
                    fuImg01.SaveAs(savePath + "\\" + txtPName.Text.ToString().Trim() + Extention);

                    SqlCommand cmd1 = new SqlCommand("insert into ProductImages values ('" + ProductID + "',N'" + txtPName.Text.ToString().Trim() + "','" + Extention + "')", con);
                    cmd1.ExecuteNonQuery();
                }

            //if (fuImg01.HasFile)
            //{
            //    string savePath = Server.MapPath("~/anhBaiThucHanh_TranVinhXuyen/ProductImages/") + ProductID;//////
            //    if (!Directory.Exists(savePath))
            //    {
            //        Directory.CreateDirectory(savePath);
            //    }

            //    string fileName = txtPName.Text.Trim() + Path.GetExtension(fuImg01.FileName);
            //    string filePath = Path.Combine(savePath, fileName);

            //    fuImg01.SaveAs(filePath);

            //    SqlCommand cmd1 = new SqlCommand("INSERT INTO ProductImages VALUES ('" + ProductID + "', N'" + txtPName.Text.Trim() + "', '" + Path.GetExtension(fuImg01.FileName) + "')", con);
            //    cmd1.ExecuteNonQuery();
            //}


            ////Image2
            //if (fuImg02.HasFile)
            //        {
            //            string savePath = Server.MapPath("~/anhBaiThucHanh_TranVinhXuyen/ProductImages1/") + ProductID;//////
            //            if (!Directory.Exists(savePath))
            //            {
            //                Directory.CreateDirectory(savePath);
            //            }
            //            string Extention = Path.GetExtension(fuImg02.PostedFile.FileName);
            //            fuImg02.SaveAs(savePath + "\\" + txtPName.Text.ToString().Trim() + Extention);

            //            SqlCommand cmd1 = new SqlCommand("insert into ProductImages values ('" + ProductID + "',N'" + txtPName.Text.ToString().Trim() + "','" + Extention + "')", con);
            //            cmd1.ExecuteNonQuery();
            //        }
            ////Image3
            //if (fuImg03.HasFile)
            //{

            //    string savePath = Server.MapPath("~/anhBaiThucHanh_TranVinhXuyen/ProductImages/") + ProductID;//////
            //    if (!Directory.Exists(savePath))
            //    {
            //        Directory.CreateDirectory(savePath);
            //    }
            //    string Extention = Path.GetExtension(fuImg01.PostedFile.FileName);
            //    fuImg03.SaveAs(savePath + "\\" + txtPName.Text.ToString().Trim() + "03");

            //    SqlCommand cmd3 = new SqlCommand("insert into ProductImages('" + ProductID + "','" + txtPName.Text.ToString().Trim() + "03" + "','" + Extention + "')", con);
            //    cmd3.ExecuteNonQuery();
            //}
            ////Image4
            //if (fuImg04.HasFile)
            //{
            //    string savePath = Server.MapPath("~/anhBaiThucHanh_TranVinhXuyen/ProductImages/") + ProductID;//////
            //    if (!Directory.Exists(savePath))
            //    {
            //        Directory.CreateDirectory(savePath);
            //    }
            //    string Extention = Path.GetExtension(fuImg01.PostedFile.FileName);
            //    fuImg04.SaveAs(savePath + "\\" + txtPName.Text.ToString().Trim() + "04");

            //    SqlCommand cmd4 = new SqlCommand("insert into ProductImages('" + ProductID + "','" + txtPName.Text.ToString().Trim() + "04" + "','" + Extention + "')", con);
            //    cmd4.ExecuteNonQuery();
            //}
            ////Image5
            //if (fuImg05.HasFile)
            //{
            //    string savePath = Server.MapPath("~/anhBaiThucHanh_TranVinhXuyen/ProductImages/") + ProductID;//////
            //    if (!Directory.Exists(savePath))
            //    {
            //        Directory.CreateDirectory(savePath);
            //    }
            //    string Extention = Path.GetExtension(fuImg01.PostedFile.FileName);
            //    fuImg05.SaveAs(savePath + "\\" + txtPName.Text.ToString().Trim() + "05");

            //    SqlCommand cmd5 = new SqlCommand("insert into ProductImages('" + ProductID + "','" + txtPName.Text.ToString().Trim() + "05" + "','" + Extention + "')", con);
            //    cmd5.ExecuteNonQuery();
            //}
            ////Image6
            //if (fuImg06.HasFile)
            //{
            //    string savePath = Server.MapPath("~/anhBaiThucHanh_TranVinhXuyen/ProductImages/") + ProductID;//////
            //    if (!Directory.Exists(savePath))
            //    {
            //        Directory.CreateDirectory(savePath);
            //    }
            //    string Extention = Path.GetExtension(fuImg01.PostedFile.FileName);
            //    fuImg06.SaveAs(savePath + "\\" + txtPName.Text.ToString().Trim() + "06");

            //    SqlCommand cmd6 = new SqlCommand("insert into ProductImages('" + ProductID + "','" + txtPName.Text.ToString().Trim() + "06" + "','" + Extention + "')", con);
            //    cmd6.ExecuteNonQuery();
            //}
            ////Image7
            //if (fuImg07.HasFile)
            //{
            //    string savePath = Server.MapPath("~/anhBaiThucHanh_TranVinhXuyen/ProductImages/") + ProductID;//////
            //    if (!Directory.Exists(savePath))
            //    {
            //        Directory.CreateDirectory(savePath);
            //    }
            //    string Extention = Path.GetExtension(fuImg01.PostedFile.FileName);
            //    fuImg07.SaveAs(savePath + "\\" + txtPName.Text.ToString().Trim() + "07");

            //    SqlCommand cmd7 = new SqlCommand("insert into ProductImages('" + ProductID + "','" + txtPName.Text.ToString().Trim() + "07" + "','" + Extention + "')", con);
            //    cmd7.ExecuteNonQuery();
            //}
            ////Image8
            //if (fuImg08.HasFile)
            //{
            //    string savePath = Server.MapPath("~/anhBaiThucHanh_TranVinhXuyen/ProductImages/") + ProductID;//////
            //    if (!Directory.Exists(savePath))
            //    {
            //        Directory.CreateDirectory(savePath);
            //    }
            //    string Extention = Path.GetExtension(fuImg01.PostedFile.FileName);
            //    fuImg08.SaveAs(savePath + "\\" + txtPName.Text.ToString().Trim() + "08");

            //    SqlCommand cmd8 = new SqlCommand("insert into ProductImages('" + ProductID + "','" + txtPName.Text.ToString().Trim() + "08" + "','" + Extention + "')", con);
            //    cmd8.ExecuteNonQuery();
            //}


        }

    }
}