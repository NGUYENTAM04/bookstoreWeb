﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["USERNAME"] != null)
        //{
        //    lblSuccess.Text = "Login Success, Welcome" + Session["USERNAME"].ToString();
        //}
        //else
        //{
        //    Response.Redirect("~/formDangNhap.aspx");
        //}
    }

    protected void btnAdminLogOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/trangChu.aspx");
    }
}
