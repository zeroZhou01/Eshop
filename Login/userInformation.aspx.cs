using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using entity;

public partial class Login_userInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            ClassUser loginUserInfo = (ClassUser)Session["loginUserInfo"];
            txt_id.Text = loginUserInfo.UserId.ToString();
            txt_account.Text = loginUserInfo.Account.ToString();
            txt_passWord.Text = loginUserInfo.PassWord.ToString();
            txt_userName.Text = loginUserInfo.UserName.ToString();
            txt_email.Text = loginUserInfo.Email.ToString();
            txt_leftMoney.Text = loginUserInfo.MoneyLeft.ToString();
            txt_address.Text = loginUserInfo.Address.ToString();
            txt_phoneNumber.Text = loginUserInfo.PhoneNumber.ToString();
        }
        catch
        {
            Response.Write("<script>alert('您还没有登录！');top.location='../login.aspx' </script>");

        }

    }
}