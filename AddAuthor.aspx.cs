using System;
using System.Data;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddAuthor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            BindAuthorRptr();
        }    
    }

    private void BindAuthorRptr()
    {
       
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from Author",con))
            {
                using(SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtAuthor = new DataTable();
                    sda.Fill(dtAuthor);
                    rptrAuthor.DataSource=dtAuthor;
                    rptrAuthor.DataBind();
                }
            }
        }
    }

    protected void btAdd_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("insert into Author values (N'"+txtAddAuthor.Text+"') ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            txtAddAuthor.Text = String.Empty;

            BindAuthorRptr();
            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //if (dt.Rows.Count != 0)
            //{
            //    if (CheckBoxForSignIn.Checked)
            //    {
            //        Response.Cookies["UNAME"].Value = username.Text;
            //        Response.Cookies["PWD"].Value = password.Text;

            //        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(7);
            //        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(7);

            //        //Session["USERNAME"] = username.Text;
            //        //Response.Redirect("~/UserHome.aspx");

            //    }
            //    else
            //    {
            //        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
            //        Response.Cookies["PWDL"].Expires = DateTime.Now.AddDays(-1);

            //    }

            //    String Utype;
            //    Utype = dt.Rows[0][6].ToString().Trim();

            //    if (Utype == "U")
            //    {
            //        Session["USERNAME"] = username.Text;
            //        Response.Redirect("~/UserHome.aspx");
            //    }

            //    if (Utype == "A")
            //    {
            //        Session["USERNAME"] = username.Text;
            //        Response.Redirect("AdminHome.aspx");
            //    }
            //}
            //else
            //{
            //    lblError.Text = "Tên sử dụng hoặc mật khẩu không hợp lệ!";
            //}
        }
    }
}