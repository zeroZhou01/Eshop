using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using entity;
using model;
public partial class main : System.Web.UI.Page
{
    public ClassUser loginUserInfo;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            EntityFactory entityFactory = new EntityFactory();
            string account = Session["account"].ToString();
            loginUserInfo = (ClassUser)entityFactory.userLoginInfo(account);
            Session.Add("loginUserInfo", loginUserInfo);//将userInfo装入session       
            lbl_welcome.Text = "您好，" + loginUserInfo.UserName.ToString();
          
            //用户一个登录用户实体类
          
          
            lbl_money.Text = "余额："+loginUserInfo.MoneyLeft.ToString();
            

    }
        catch
        {
            Response.Write("<script>alert('您还没有登录！');top.location='../login.aspx' </script>");

        }

    }
}