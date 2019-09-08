using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using entity;
using utils;
using model;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void bt_register_Click(object sender, EventArgs e)
    {
        //先验证密码是否一致
        if (txt_password.Text == txt_checkCode.Text)
        {
            //目前没有对账号的唯一性进行认证，后期再完善
           //创建一个用户注册对象
            ClassUser registerUserInfo = new ClassUser();
            //使用实体工厂将用户注册的信息封装到注册对象当中
            EntityFactory entityFactory = new EntityFactory();
            int userId = 0;//这里为了满足重载函数要求，初始化为0，但不需要插入数据库，数据库中userId字段为自动增加
            string account = this.txt_account.Text.ToString();
            string password = this.txt_password.Text.ToString();
            string userName = this.txt_userName.Text.ToString();
            string email = this.txt_email.Text.ToString();
            double moneyLeft = 0;//初始化余额为0
            string address = "";
            string phoneNumber = "";
            registerUserInfo = entityFactory.ToUserClass(userId,account,password,userName,email,moneyLeft,address,phoneNumber);//调用ToUserClass（）方法封装信息到实体类
            //调用Dao类的注册方法，将实体类信息插入到数据库
            Dao dao = new Dao();
            int result=  dao.register(registerUserInfo);
            if (result == 1)
            {
                Response.Write("<script>alert('注册成功！');top.location='login.aspx' </script>");
            }
            else
            {
                Response.Write("<script>alert('注册失败！')</script>");
            }

        }
        else
        {

            txt_checkCode.BorderColor = System.Drawing.Color.Red;
        }
    }
    
}