<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changeInformation.aspx.cs" Inherits="Login_changeInoformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>修改基本资料</title>
      <style>
      
        #myInfo
        {          
            margin:auto;         
            width:600px;
            height:400px;
        }
        
        .left{
            text-align:right;
        }
        .right{
            padding-left:40px;
        }
        #bt_change{
            height:30px;
            width:100px;
        }
         #content
        {
            margin:auto;
            text-align:center;
            margin-top:20px;
            color:darkgreen;
            font-size:16px;
        }
        .txt{
            width:200px;
            height:25px;
            border-radius:4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="page">
             <div id="content">
                    <table id="myInfo">
                       
                         <tr>
                            <td class="left">我的账号</td>
                             <td class="right">
                                <asp:TextBox ID="txt_account" class="txt" runat="server"></asp:TextBox></td>
                        </tr>
                                               
                         <tr>
                            <td class="left"> 我的用户名</td><td class="right">
                                <asp:TextBox ID="txt_userName" class="txt" runat="server" ></asp:TextBox></td>
                        </tr>
                         <tr>
                            <td class="left">我的邮箱</td><td class="right">
                                <asp:TextBox ID="txt_email" class="txt" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="left">我的地址</td><td class="right">
                                <asp:TextBox ID="txt_address" class="txt" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="left">我的手机号</td><td class="right">
                                <asp:TextBox ID="txt_phoneNumber" class="txt" runat="server"></asp:TextBox></td>
                        </tr>
                       
                         <tr>
                            <td class="left"></td><td class="right">
                                <asp:Button ID="bt_change" runat="server" Text="修改" OnClick="bt_change_Click" /> 
                                <asp:Label ID="lbl_message" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
                                                  </td>
                        </tr>
                    </table>
                 
                </div>
<div id="footer" style="margin:auto; margin-top:150px;text-align:center">
            <br />
            电子商务课程设计网站-Eshop电子商城
            <br />
            &copy Copyright2019Eshop电子商城设计小组
        </div>
        

        </div>
    </form>
</body>
</html>
