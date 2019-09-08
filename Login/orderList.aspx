<%@ Page Language="C#" AutoEventWireup="true" CodeFile="orderList.aspx.cs" Inherits="Login_orderListaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>全部订单</title>
    <style>
        #GridView1
        {
            border-radius:10px;
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1376px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField HeaderText="订单编号" DataField="orderId" />
                <asp:BoundField HeaderText="商品编号" DataField="goodsId" />
                <asp:BoundField HeaderText="商品名" DataField="goodsName" />
                <asp:BoundField HeaderText="数量" DataField="goodsNumber" />
                <asp:BoundField HeaderText="总价格" DataField="goodsPrice" />
                <asp:BoundField HeaderText="时间" DataField="orderDate" />
            </Columns>
            <EditRowStyle BackColor="DarkGreen" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="DarkGreen" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </form>
</body>
</html>
