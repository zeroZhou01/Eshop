<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>
<html >
  <head>
      <link rel="shortcut icon" href="image/icon.PNG" />
    <meta charset="UTF-8">
    <title>注册Eshop</title>
      <link rel="stylesheet" type="text/css" href="CSS/register.css" />
    <meta name="description" content="" />   
  
      
      <style type="text/css">
        
      </style>
  
      
      </head>

  <body>
      <form runat="server">
      <div id="page">
      <div id="header">
          <div id="logo">
              Eshop
          </div>
      </div>
        <div id="content"> 
            <div id="content_right">
                <p>注册Eshop账号</p>
                <table id="tb_login" cellspacing="5px">
                    <tr>
                        <td class="td_left"><label for="txt_userName">名字:</label></td>
                        <td class="td_right">
                            <asp:TextBox ID="txt_userName" runat="server" class="txt"></asp:TextBox></td>
                    </tr>
                           <tr>
                        <td class="td_left"></td>
                        <td class="td_right">  </td>
                    </tr>
                     <tr>
                        <td class="td_left"><label for="txt_Email" >邮 箱:</label></td>
                        <td class="td_right">
                            <asp:TextBox ID="txt_email" runat="server" class="txt"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="td_left"></td>
                        <td class="td_right">  </td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="txt_account">账 号:</label></td>
                        <td class="td_right">
                            <asp:TextBox ID="txt_account" runat="server" class="txt"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td class="auto-style2">   </td>
                    </tr>
                      <tr>
                        <td  class="td_left"><label for="txt_password">密 码:</label></td>
                        <td class="td_right" >
                            <asp:TextBox ID="txt_password"  runat="server" class="txt" TextMode="Password"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td class="td_left"></td>
                        <td class="td_right">   </td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="txt_checkCode" >确 认:</label></td>
                        <td class="td_right">
                            <asp:TextBox ID="txt_checkCode" runat="server" class="txt" TextMode="Password"></asp:TextBox></td>
                    </tr>                  
                     <tr>
                        <td class="auto-style1"></td>
                        <td class="auto-style2"> 
                           </td>
                    </tr>
                     <tr>
                        <td  id="td_register" colspan="2"> <asp:Button ID="bt_register" runat="server" Text="注册" Width="177px" OnClick="bt_register_Click" /></td>
                      
                    </tr>                   
                      <tr>
                        <td  class="td_left"><a href="index.aspx">首页</a></td>
                        <td class="td_right">
                          <a href="login.aspx"> 已有账号，立即登录 </a></td> 
                    </tr>
                </table>
            </div>
        </div>
      <div id="footer">
           <br />            
                电子商务课程设计网站-Eshop电子商城
                 <br />
                  &copy Copyright2019Eshop电子商城设计小组
      </div>
          </div>
          </form>
  </body>
</html>