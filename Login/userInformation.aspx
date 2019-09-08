<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userInformation.aspx.cs" Inherits="Login_userInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>我的资料</title>
    <style>
        #content{
            margin-top:60px;
            margin:auto;
          
        }
        #myInfo
        {          
            margin:auto;         
            width:600px;
            height:400px;
            border-width:0.5px;
            border-color:gray;
           
            
        }
        #myInfo td{
           border-color:gray;
            height:1px;
            border-style:solid;
            border-width:0.5px;
        }
        .txt
        {
            border-color:darkgreen;      
            height:25px;
            width:250px;
            margin-right:100px;
            font-size:15px;
            border-width:1px;
            border-style:none;
      
        }
        .left{
            text-align:center;
        }
        .right{
            padding-left:40px;
        }
        .auto-style1 {
            text-align: center;
            width: 182px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="page">
                <div id="content">
                    <table id="myInfo" cellspacing="0px">
                        <tr>
                            <td class="auto-style1">我的id</td><td class="right">
                                <asp:TextBox ID="txt_id" class="txt" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                         <tr>
                            <td class="auto-style1">我的账号</td>
                             <td class="right">
                                <asp:TextBox ID="txt_account" class="txt" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        
                         <tr>
                            <td class="auto-style1">我的密码</td><td class="right">
                                <asp:TextBox ID="txt_passWord" class="txt" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                         <tr>
                            <td class="auto-style1"> 我的用户名</td><td class="right">
                                <asp:TextBox ID="txt_userName" class="txt" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                         <tr>
                            <td class="auto-style1">我的邮箱</td><td class="right">
                                <asp:TextBox ID="txt_email" class="txt" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        
                        <tr>
                            <td class="auto-style1">我的地址</td><td class="right">
                                <asp:TextBox ID="txt_address" class="txt" runat="server" ReadOnly="True" ></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style1">我的手机号</td><td class="right">
                                <asp:TextBox ID="txt_phoneNumber" class="txt" runat="server" ReadOnly="True" ></asp:TextBox></td>
                        </tr>
                         <tr>
                            <td class="auto-style1">我的余额</td><td class="right">
                                <asp:TextBox ID="txt_leftMoney" class="txt" runat="server" ReadOnly="True" ForeColor="Red"></asp:TextBox></td>
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
