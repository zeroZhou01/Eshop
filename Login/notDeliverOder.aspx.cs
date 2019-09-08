using entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using utils;


public partial class Login_notDeliverOder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ClassUser loginUserInfo = (ClassUser)Session["loginUserInfo"];

        DataTable orderTable = new DataTable();
        Dao dao = new Dao();
        orderTable = dao.getNotDeliverOrder(loginUserInfo.Account.ToString());
        GridView1.DataSource = orderTable;
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}