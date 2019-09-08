using entity;
using model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using utils;

public partial class unLogin_phone_huawei : System.Web.UI.Page
{
    ClassUser classUser;
    int amount = 1;//用于记录数量
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            classUser = (ClassUser)Session["loginUserInfo"];
            Button3.BorderColor = System.Drawing.Color.DarkGreen;
            Button7.BorderColor = System.Drawing.Color.DarkGreen;
            Label3.Text = "1";
            Label4.Text = "2";
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        int amount = Convert.ToInt32(TextBox1.Text);

        amount = Convert.ToInt32(TextBox1.Text);

        if (Label3.Text == "1")
        {
            int money = 2999 * amount;
            Label1.Text = money.ToString();
            Label1.Visible = true;
        }
        if (Label3.Text == "2")
        {
            int money = 2999 * amount;
            Label1.Text = money.ToString();
            Label1.Visible = true;
        }
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        amount = Convert.ToInt32(TextBox1.Text);
        amount++;
        TextBox1.Text = amount.ToString();
        if (Label3.Text == "1")
        {
            int money = 2999 * amount;
            Label1.Text = money.ToString();
            Label1.Visible = true;
        }
        if (Label3.Text == "2")
        {
            int money = 2999 * amount;
            Label1.Text = money.ToString();
            Label1.Visible = true;
        }


    }

    protected void Button9_Click(object sender, EventArgs e)
    {

        amount = Convert.ToInt32(TextBox1.Text);

        if (amount > 1)
        {
            amount--;
        }
        TextBox1.Text = amount.ToString();
        if (Label3.Text == "1")
        {
            int money = 2999 * amount;
            Label1.Text = money.ToString();
            Label1.Visible = true;
        }
        if (Label3.Text == "2")
        {
            int money =2999 * amount;
            Label1.Text = money.ToString();
            Label1.Visible = true;
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Button3.BorderColor = System.Drawing.Color.DarkGreen;
      

        Label1.Text = "2999";
        TextBox1.Text = "1";
        Label3.Text = "1";
    }



    protected void Button7_Click(object sender, EventArgs e)
    {
        Button7.BorderColor = System.Drawing.Color.DarkGreen;
        Button8.BorderColor = System.Drawing.Color.White;

        TextBox1.Text = "1";
        Label4.Text = "1";
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Button8.BorderColor = System.Drawing.Color.DarkGreen;
        Button7.BorderColor = System.Drawing.Color.White;

        TextBox1.Text = "1";
        Label4.Text = "2";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        if (Label3.Text.ToString() == "1" && Label4.Text.ToString() == "1")
        {
            Random rd = new Random();
            int orderId = rd.Next(1, 100000000);//生成随机订单号
            int goodsId = 2001;
            string goodsName = "华为 P20手机 渐变色";
            int goodsNumber = Convert.ToInt32(TextBox1.Text);
            int price = Convert.ToInt32(Label1.Text);
            DateTime dataTime = DateTime.Now;
            int orderState = 0;//下单先是为0，未发货状态
            ClassOrder classOrder = new ClassOrder();
            EntityFactory entityFactory = new EntityFactory();
            classOrder = entityFactory.toClassOrder(orderId, goodsId, goodsName, goodsNumber, price, dataTime, orderState);
            Dao dao = new Dao();
            dao.purchase(classOrder, classUser);
        }
        if (Label3.Text.ToString() == "2" && Label4.Text.ToString() == "1")
        {

            Random rd = new Random();
            int orderId = rd.Next(1, 100000000);//生成随机订单号
            int goodsId = 2002;
            string goodsName = "华为 P20手机 灰橙";
            int goodsNumber = Convert.ToInt32(TextBox1.Text);
            int price = Convert.ToInt32(Label1.Text);
            DateTime dataTime = DateTime.Now;
            int orderState = 0;//下单先是为0，未发货状态
            ClassOrder classOrder = new ClassOrder();
            EntityFactory entityFactory = new EntityFactory();
            classOrder = entityFactory.toClassOrder(orderId, goodsId, goodsName, goodsNumber, price, dataTime, orderState);
            Dao dao = new Dao();
            dao.purchase(classOrder, classUser);
        }
      
        Response.Write("<script>alert('购买成功，请到订单详情查询！');top.location='../main.aspx' </script>");
    
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ClassStock goodsStock = new ClassStock();
        EntityFactory entityFactory = new EntityFactory();
        if (Label3.Text.ToString() == "1" && Label4.Text.ToString() == "1") goodsStock = entityFactory.getGoodsStock(2001);
        if (Label3.Text.ToString() == "1" && Label4.Text.ToString() == "2") goodsStock = entityFactory.getGoodsStock(2002);
        Label2.Text = goodsStock.GoodsNumber.ToString();
        Label2.Visible = true;
    }

}