<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>电子商城Eshop.com</title>
    <link rel="shortcut icon" href="image/icon.PNG" />
<link rel="stylesheet" type="text/css" href="CSS/share1.css" />
 <script src="http://api.asilu.com/cdn/jquery.js,jquery.backstretch.min.js" type="text/javascript"></script>   
</head>
<body>
    <form id="form1" runat="server">
        <div id="page">
            <!--这个是头部-->
            <div id="header">
                <div id="h_navi">
                    
                        <div id="navi_t_left">
                            <table   cellspacing="10px">
                      <tr>
                         <td class="auto-style1"><asp:Label ID="lbl_welcome" runat="server" Text="您好，欢迎来到Eshop"></asp:Label> </td>
                           <td class="auto-style1"><asp:HyperLink ID="denglu" runat="server" ForeColor="White" NavigateUrl="~/login.aspx" style="text-decoration:none">请登录</asp:HyperLink></td>
                          <td class="auto-style1"><asp:HyperLink ID="zhuce" runat="server" BorderStyle="None" ForeColor="White" NavigateUrl="~/register.aspx" style="text-decoration:none">免费注册</asp:HyperLink></td>
                      </tr>
                  </table>
                        </div>
                         <div id="navi_t_right" >
                                <table  cellspacing="10px">
                      <tr>                         
                      </tr>
                  </table>
                         </div>
              
                 
                    
                      
            </div>
                
                <div id="h_search">
                      <div id="logo">Eshop</div>
                    <div>
                        <asp:TextBox ID="txt_sousuo" runat="server"  placeholder="请输入要查询的商品"></asp:TextBox>
                     &nbsp&nbsp
                    <asp:Button ID="bt_sousuo" runat="server" Text="查询" ForeColor="White" />
                        </div>
                </div>
            
            </div>
            <!--这里是内容部分-->
            <div id="content">
                <div id="ccontent">                 
                    <div id="content_midle">
                            <div id="navi_shop">
                                
                                <table id="t_navi" cellspacing="10px">
                                    <tr> <td class="td_navi"><a href="unLogin/pad_huawei.aspx">华为M5平板</a></td></tr>  
                                    <tr> <td class="td_navi"><a href="unLogin/phone_huawei.aspx">华为P20手机</a></td></tr> 
                                    <tr> <td class="td_navi"><a href="unLogin/pc_huawei.aspx">华为MateBook电脑</a></td></tr> 
                                    <tr> <td class="td_navi"><a href="#">小米电脑</a></td></tr> 
                                    <tr> <td class="td_navi"><a href="#">小米手机</a></td></tr> 
                                    <tr> <td class="td_navi"><a href="#">小米平板</a></td></tr> 
                                    <tr> <td class="td_navi"><a href="#">戴尔电脑</a></td></tr> 
                                </table>
                      
                    </div>                 
                 </div>
            </div>
            <!--这是脚部-->
             <div id="footer">
                 <br />            
                电子商务课程设计网站-Eshop电子商城
                 <br />
                  &copy Copyright2019Eshop电子商城设计小组
             </div>

                </div>
         </div>
    </form>
</body>
</html>
