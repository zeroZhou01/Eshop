<%@ Page Language="C#" AutoEventWireup="true" CodeFile="charge.aspx.cs" Inherits="Login_charge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Eshop充值页面</title>
    <style>
        #content
        {
            margin:auto;
            text-align:center;
            margin-top:120px;
            color:darkgreen;
            font-size:16px;
        }
        .txt{
            width:200px;
            height:25px;
            border-radius:4px;
        }
        #bt_charge,.lbl{
            border-radius:4px;
            height:29px;
            background-color:darkgreen;
            width:50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="content">

                余额：
                  &nbsp  &nbsp 
                <asp:TextBox ID="txt_moneyLeft" class="txt" runat="server" ForeColor="Red" ></asp:TextBox>
                <br/>
                <br/>
                <br/>
               
               <asp:Button ID="bt_charge" class="lbl"  runat="server" Text="充值" OnClick="bt_charge_Click" />
                    &nbsp  &nbsp 
                <asp:TextBox ID="txt_moneyAdd" class="txt" runat="server" placeholder="需要充值的金额"></asp:TextBox>
                
              
                 <br/>
                <br/>
                <br/>
                <asp:Button ID="bt_tixian" class="lbl"  runat="server" Text="提现" OnClick="bt_tixian_Click" />
                 &nbsp  &nbsp 
                <asp:TextBox ID="txt_tixian" class="txt" runat="server" placeholder="需要充值的金额"></asp:TextBox>
                
                <br />

                <br />
                <asp:Label ID="lbl_message" runat="server" ForeColor="Red" Visible="False"></asp:Label>

            </div>
              <div id="footer" style="margin:auto;margin-top:300px;text-align:center">
            <br />
            电子商务课程设计网站-Eshop电子商城
            <br />
            &copy Copyright2019Eshop电子商城设计小组
        </div>
        </div>
    </form>
</body>
</html>
