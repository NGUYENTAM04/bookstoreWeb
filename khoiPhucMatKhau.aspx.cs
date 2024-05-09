using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class RecoverPwd : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    String GUIvalue;
    DataTable dt = new DataTable();
    int Uid;

    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS)) 
        {
            GUIvalue = Request.QueryString["Uid"];
            if (GUIvalue != null)
            {
                SqlCommand cmd = new SqlCommand("select * from ForgotPassRequests where id = '"+GUIvalue+"'",con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                if(dt.Rows.Count != 0)
                {
                    Uid = Convert.ToInt32(dt.Rows[0][1]);
                }
                else
                {
                    lblMsg.Text = "Liên kết đặt lại mật khẩu của bạn đã hết hạn hoặc không hợp lệ!";
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                }
            }
            else 
            {
                Response.Redirect("trangChu.aspx");
            }

            if (!IsPostBack) 
            {
                if (dt.Rows.Count !=0) 
                {
                    tbNewPass.Visible = true;
                    tbConfirmPass.Visible = true;
                    lblPassword.Visible = true;
                    lblRetypePass.Visible = true;   
                    btRecoverPass.Visible = true;
                }
                else 
                {
                    lblMsg.Text = "Liên kết đặt lại mật khẩu của bạn đã hết hạn hoặc không hợp lệ!";
                    lblMsg.ForeColor=System.Drawing.Color.FromArgb(243, 114 ,146);
                }
            }
        }
    }



    protected void btRecoverPass_Click(object sender, EventArgs e)
    {
        if(tbNewPass.Text !=  "" && tbConfirmPass.Text != "" && tbNewPass.Text == tbConfirmPass.Text)
        {

            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("update Users2 set Password = '"+tbNewPass.Text+"' where Id = '"+Uid+"'",con);
                con.Open();
                cmd.ExecuteNonQuery();
                SqlCommand cmd2 = new SqlCommand("delete from ForgotPassRequests where Uid = '"+Uid+"'",con);
                cmd2.ExecuteNonQuery();
                Response.Redirect("formDangNhap.aspx");

            }
        }

    }
}