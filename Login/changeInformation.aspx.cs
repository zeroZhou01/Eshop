using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using utils;
using entity;

public partial class Login_changeInoformation : System.Web.UI.Page
{
    ClassUser loginUserInfo;
    protected void Page_Load(object sender, EventArgs e)
    {
        loginUserInfo = (ClassUser)Session["loginUserInfo"];
        if (!IsPostBack)
        {
            txt_account.Text = loginUserInfo.Account;
            txt_userName.Text = loginUserInfo.UserName;
            txt_email.Text = loginUserInfo.Email;
            txt_phoneNumber.Text = loginUserInfo.PhoneNumber.ToString();
            txt_address.Text = loginUserInfo.Address.ToString();
        }


    }

    protected void bt_change_Click(object sender, EventArgs e)
    {
        loginUserInfo = (ClassUser)Session["loginUserInfo"];
        loginUserInfo.Account = txt_account.Text.ToString();
        loginUserInfo.UserName = txt_userName.Text.ToString();
        loginUserInfo.Email = txt_email.Text.ToString();
        loginUserInfo.Address = txt_address.Text.ToString();
        loginUserInfo.PhoneNumber = txt_phoneNumber.Text.ToString();
       
        Dao dao = new Dao();
        int result = dao.changeInfo(loginUserInfo);
        if (result==1) {
            lbl_message.Text = "信息修改成功";
            lbl_message.Visible = true;
            
        }
      else if(result==0)
        {
            lbl_message.Text = "信息修改失败";
            lbl_message.Visible = true;
        }



    }
}