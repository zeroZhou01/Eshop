using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using entity;
using utils;

public partial class Login_charge : System.Web.UI.Page
{
    ClassUser loginUserInfo;
    protected void Page_Load(object sender, EventArgs e)
    {


        try
        {

            //测试用，为了文本框的值是返回的更新值，所以要用（!IsPostBack），

            loginUserInfo = (ClassUser)Session["loginUserInfo"];
            if (!IsPostBack)
            {
                txt_moneyLeft.Text = loginUserInfo.MoneyLeft.ToString();
            }


        }
        catch
        {
            Response.Write("<script>alert('您还没有登录！');top.location='../login.aspx' </script>");

        }
    }

    protected void bt_charge_Click(object sender, EventArgs e)
    {
        try
        {
            loginUserInfo = (ClassUser)Session["loginUserInfo"];
            loginUserInfo.MoneyLeft = Convert.ToDouble(txt_moneyAdd.Text) + loginUserInfo.MoneyLeft;
            Dao dao = new Dao();
            dao.charge(loginUserInfo);
            txt_moneyLeft.Text = loginUserInfo.MoneyLeft.ToString();
            lbl_message.Text = "充值成功";
            txt_moneyAdd.Text = "";
            lbl_message.Visible = true;

        }
        catch
        {
            lbl_message.Visible = true;
            lbl_message.Text = "请输入要添加的金额";
        }
    }
    protected void bt_tixian_Click(object sender, EventArgs e)
    {
        try
        {
            loginUserInfo = (ClassUser)Session["loginUserInfo"];
            loginUserInfo.MoneyLeft = loginUserInfo.MoneyLeft - Convert.ToDouble(txt_tixian.Text);
            Dao dao = new Dao();
            dao.charge(loginUserInfo);
            txt_moneyLeft.Text = loginUserInfo.MoneyLeft.ToString();
            txt_tixian.Text = "";
            lbl_message.Text = "提现成功";
            lbl_message.Visible = true;
        }

        catch
        {
            lbl_message.Visible = true;
            lbl_message.Text = "请输入要提现的金额";
        }
    }
}