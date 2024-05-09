using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }





    protected void btPassRecover_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from Users2 where Email ='" + tbEmailId.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                String myGUID = Guid.NewGuid().ToString();
                int Uid = Convert.ToInt32(dt.Rows[0][0]);
                SqlCommand cmd1 = new SqlCommand("insert into ForgotPassRequests values('" + myGUID + "','" + Uid + "',getdate())", con);
                cmd1.ExecuteNonQuery();


                //send email
                String ToEmailAddress = dt.Rows[0][2].ToString();
                String Username = dt.Rows[0][1].ToString();
                String EmailBody = "Hi " + Username + ", <br/><br/> Nhấp vào link bên dưới để thiết lập mật khẩu của bạn <br/><br/> http://localhost:53246/khoiPhucMatKhau.aspx?Uid=" + myGUID;
                MailMessage PassRecoverMail = new MailMessage("yourEmail@gmail.com", ToEmailAddress);
                PassRecoverMail.Body = EmailBody;
                PassRecoverMail.IsBodyHtml = true;
                PassRecoverMail.Subject = "Cài lại mặt khẩu trên ứng dụng bán sách MT";

                SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                SMTP.Credentials = new NetworkCredential()
                {
                    UserName = "nguyentam20031104@@gmail.com",
                    //UserName = dt.Rows[0][2].ToString(),
                    Password = "pcxl rjkc otby yqqk"

                };

                SMTP.EnableSsl = true;
                SMTP.Send(PassRecoverMail);


                lbPassRecover.Text = "Kiểm tra Email của bạn để thiết lập lại mật khẩu";
                lbPassRecover.ForeColor= System.Drawing.Color.Green;
            }
            else 
            {
                lbPassRecover.Text = "Tài khoản này không có trên hệ thống của chúng tôi!";
                lbPassRecover.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}