using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class formDangKi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btDangKi_Click(object sender, EventArgs e)
    {
        if (tbName.Text != "" & tbEmail.Text != "" && tbDate.Text != "" && tbPwd.Text != "" && tbAddress.Text != "")
        {
            if (tbPwd.Text == tbConfirmation_pwd.Text)
            {
                String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into Users2 values(N'" + tbName.Text + "','" + tbEmail.Text + "','" + tbDate.Text + "',N'" + tbPwd.Text + "',N'" + tbAddress.Text + "','U')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
                lbIMsg.ForeColor = Color.FromArgb(2, 81, 49);
                //lbIMsg.Text = "Đăng kí thành công";
                Response.Redirect("~/formDangNhap.aspx");

            }
            else
            {
                lbIMsg.ForeColor = Color.Red;
                lbIMsg.Text = "Mật khẩu không khớp";
            }
        }
    }

}