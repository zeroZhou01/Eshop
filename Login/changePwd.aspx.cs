using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using entity;
using utils;
public partial class Login_chagePwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void bt_change_Click(object sender, EventArgs e)
    {
        ClassUser loginUserInfo =(ClassUser) Session["loginUserInfo"];
        if (txt_oldPwd.Text.ToString() ==loginUserInfo.PassWord)
        {
            if(txt_newPwd.Text!=null)
            {
                loginUserInfo.PassWord = txt_newPwd.Text.ToString();
                Dao dao = new Dao();
                dao.changePwd(loginUserInfo);
                lbl_message.Text = "密码修改成功，下次登录失效";
                lbl_message.Visible = true;
            }
            else
            {
                lbl_message.Text = "新密码格式错误";
                lbl_message.Visible = true;
            }

        }
        else
        {
            lbl_message.Text = "原密码错误！";
            lbl_message.Visible = true;
        }
    }
}