using model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class unLogin_pc_huawei : System.Web.UI.Page

{

    int amount = 1;//用于记录数量
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Button3.BorderColor = System.Drawing.Color.DarkGreen;
            Button7.BorderColor = System.Drawing.Color.DarkGreen;
            Label3.Text = "1";
            Label4.Text = "2";
        }
    }

    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {
        int amount = Convert.ToInt32(TextBox1.Text);

        amount = Convert.ToInt32(TextBox1.Text);

        if (Label3.Text == "1")
        {
            int money = 3999 * amount;
            Label1.Text = money.ToString();
            Label1.Visible = true;
        }
        if (Label3.Text == "2")
        {
            int money = 4999 * amount;
            Label1.Text = money.ToString();
            Label1.Visible = true;
        }
    }




    protected void Button10_Click1(object sender, EventArgs e)
    {
        amount = Convert.ToInt32(TextBox1.Text);
        amount++;
        TextBox1.Text = amount.ToString();
        if (Label3.Text == "1")
        {
            int money = 3999 * amount;
            Label1.Text = money.ToString();
            Label1.Visible = true;
        }
        if (Label3.Text == "2")
        {
            int money = 4999 * amount;
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
            int money = 3999 * amount;
            Label1.Text = money.ToString();
            Label1.Visible = true;
        }
        if (Label3.Text == "2")
        {
            int money = 4999 * amount;
            Label1.Text = money.ToString();
            Label1.Visible = true;
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Button3.BorderColor = System.Drawing.Color.DarkGreen;
        Button5.BorderColor = System.Drawing.Color.White;

        Label1.Text = "3999";
        TextBox1.Text = "1";
        Label3.Text = "1";
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Button5.BorderColor = System.Drawing.Color.DarkGreen;
        Button3.BorderColor = System.Drawing.Color.White;
        ;
        Label1.Text = "4999";
        TextBox1.Text = "1";
        Label3.Text = "2";
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
        Response.Write("<script>alert('您还没有登录！');top.location='../login.aspx' </script>");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ClassStock goodsStock = new ClassStock();
        EntityFactory entityFactory = new EntityFactory();
        if (Label3.Text.ToString() == "1" && Label4.Text.ToString() == "1") goodsStock = entityFactory.getGoodsStock(3001);
        if (Label3.Text.ToString() == "2" && Label4.Text.ToString() == "1") goodsStock = entityFactory.getGoodsStock(3002);
        if (Label3.Text.ToString() == "1" && Label4.Text.ToString() == "2") goodsStock = entityFactory.getGoodsStock(3003);
        if (Label3.Text.ToString() == "2" && Label4.Text.ToString() == "2") goodsStock = entityFactory.getGoodsStock(3004);
        Label2.Text = goodsStock.GoodsNumber.ToString();
        Label2.Visible = true;
    }





   
}