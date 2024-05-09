using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindMainCategory();
            BindSubCategoryRptr();
        }

    }

    private void BindSubCategoryRptr()
    {

        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select A.*, B.* from SubCategories A inner join  Category B on B.CategoryID=A.MainCategoryID", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtSubCategories = new DataTable();
                    sda.Fill(dtSubCategories);
                    rptrSubCategory.DataSource = dtSubCategories;
                    rptrSubCategory.DataBind();
                }
            }
        }
    }


    private void BindMainCategory()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select* from Category",con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count != 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField ="CategoryName";
                ddlCategory.DataValueField = "categoryID";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0,new ListItem("--LỰA CHỌN--","0"));
            }
        }
    }

    protected void btAdd_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("insert into SubCategories values(N'"+txtSubCategoryName.Text+"','"+ddlCategory.Text+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            txtSubCategoryName.Text=string.Empty;
            ddlCategory.ClearSelection();
            ddlCategory.Items.FindByValue("0").Selected = true;

            BindSubCategoryRptr();
        }
    }
}