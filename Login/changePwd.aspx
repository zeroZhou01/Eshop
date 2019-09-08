<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changePwd.aspx.cs" Inherits="Login_chagePwd" %>
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
        #bt_change{
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

                
               
               原密码：
                    &nbsp  &nbsp 
                <asp:TextBox ID="txt_oldPwd" class="txt" runat="server" placeholder="请输入原密码"></asp:TextBox>
                
              
                 <br/>
                <br/>
                <br/>
               新密码：
                 &nbsp  &nbsp 
                <asp:TextBox ID="txt_newPwd" class="txt" runat="server" placeholder="请输入新密码"></asp:TextBox>
                 <br />
                <br />
                <asp:Button ID="bt_change" runat="server" Text="修改" OnClick="bt_change_Click" />
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
