using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using utils;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void bt_login_Click(object sender, EventArgs e)
    {
         string strAccount = txt_account.Text.ToString();
         string strUserPwd = txt_password.Text;      
        
            Operation operation = new Operation();
        if (Session["CheckCode"] != null)
        {
            string checkcode = Session["CheckCode"].ToString();
            if (this.txt_checkBox.Text == checkcode)
            {
                switch (operation.login(strAccount, strUserPwd))
                {
                    case 0: { lblError.Text = operation.loginMessage; lblError.Visible = true; } break;
                    case 1: { lblError.Text = operation.loginMessage; lblError.Visible = true; } break;
                    case 2: { lblError.Text = operation.loginMessage; lblError.Visible = true; } break;
                    case 3:
                        {
                            string strUserName = operation.userName;
                            Session.Add("account", strAccount);
                            Session.Add("userName", strUserName);
                            Response.Redirect("main.aspx");
                        }
                        break;

                }
            }
            else
            {
                lblError.Text = "验证码输入错误！";
            }
        }
      
        
    }
}