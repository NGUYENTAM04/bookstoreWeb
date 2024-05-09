using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"] != null)
            {
                username.Text = Request.Cookies["UNAME"].Value;
                password.Attributes["value"] = Request.Cookies["PWD"].Value;

                CheckBoxForSignIn.Checked = true;
            }
        }
    }



    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from Users2 where Email = '" + username.Text + "'and Password='" + password.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            String Utype;
            Utype = dt.Rows[0]["UserTypes"].ToString().Trim();

            if (dt.Rows.Count != 0)
            {
                Session["USERID"] = dt.Rows[0]["Id"].ToString();
                Session["USEREMAIL"] = dt.Rows[0]["Email"].ToString();

                if (CheckBoxForSignIn.Checked)
                {
                    Response.Cookies["UNAME"].Value = username.Text;
                    Response.Cookies["PWD"].Value = password.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(7);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(7);

                    if (Utype == "U")
                    {
                        Session["USERNAME"] = username.Text;
                        Response.Redirect("~/UserHome.aspx");

                    }

                    if (Utype == "A")
                    {
                        Session["USERNAME"] = username.Text;
                        Response.Redirect("AdminHome.aspx");

                    }

                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["PWDL"].Expires = DateTime.Now.AddDays(-1);

                }

                
                if (Utype == "A")
                {
                    Session["USERNAME"] = username.Text;
                    Response.Redirect("AdminHome.aspx");
                }

                if (Utype == "U")
                {
                    Session["USERNAME"] = username.Text;
                    if (Request.QueryString["rurl"] != null)
                    {
                        Response.Redirect("~/Cart.aspx");
                    }
                    else
                    {
                        Response.Redirect("~/UserHome.aspx");

                    }
                }

            }
            else
            {
                lblError.Text = "Tên sử dụng hoặc mật khẩu không hợp lệ!";
            }
        }
    }

   
}