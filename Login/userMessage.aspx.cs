using entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_userMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ClassUser userLoginInfo = (ClassUser)Session["loginUserInfo"];
        Session.Add("userLoginInfo",userLoginInfo);
    }
}