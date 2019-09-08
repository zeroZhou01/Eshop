<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<html >
  <head>
      <link rel="shortcut icon" href="image/icon.PNG" />
    <meta charset="UTF-8">
    <title>欢迎登陆Eshop</title>
      <link rel="stylesheet" type="text/css" href="CSS/login.css" />
    <meta name="description" content="" />   
      <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        //点击切换验证码
        function f_refreshtype() {
            var Image1 = document.getElementById("img");
            if (Image1 != null) {
                Image1.src = Image1.src + "?";
            }
        } 
    </script>
      
     
      
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
                 <a href="index.aspx" style="float:left;">首页</a> <p>登录Eshop</p>
               <div id="content_right_head ">
                
                  
                   </div>
                <table id="tb_login" cellspacing="14px">
                    <tr>
                        <td >
                            <asp:TextBox ID="txt_account" runat="server" class="txt" placeholder="请输入账号"></asp:TextBox></td>
                    </tr>
                   
                      <tr>
                        <td class="td_right">
                            <asp:TextBox ID="txt_password" runat="server" class="txt" TextMode="Password" placeholder="请输入密码"></asp:TextBox></td>
                    </tr>

                    <tr>
                       <td class="auto-style2">
                                        
                    <asp:TextBox ID="txt_checkBox" class="txt" runat="server" Width="160px" placeholder="请输入验证码">  </asp:TextBox>
                           <img src="png.aspx" id="img" onclick="f_refreshtype()"  style="width:50px;height:20px;"/>   
                    </td>
                  
                    </tr>
                                    
                    
                      <tr>
                      
                        <td  >                   
                      <asp:Label ID="lblError" runat="server" ForeColor="Red" Height="12px" Font-Size="13px" ></asp:Label> <asp:Button ID="bt_login" runat="server" Text="登录" OnClick="bt_login_Click" Width="50px"  />
                        </td>
                    </tr>
                    
                </table>
                <br />
          
                 <a href="register.aspx"style="float:left"> 没有账号，立即注册 </a>

                   

                      

            </div>
        </div>
      <div id="footer">
           <br />            
                电子商务课程设计网站-Eshop.com电子商城
                 <br />
                  &copy Copyright2019Eshop电子商城设计小组
      </div>
          </div>
          </form>
  </body>
</html>
