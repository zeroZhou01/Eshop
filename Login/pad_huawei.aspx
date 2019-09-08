<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pad_huawei.aspx.cs" Inherits="unLogin_pad_huawei" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Eshop华为平板</title>
    <link rel="shortcut icon" href="image/icon.PNG" />
    <link rel="stylesheet" type="text/css" href="../CSS/share2.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="page">
             <!--这个是头部-->
            <div id="header">
                <div id="h_navi">
                    <div id="navi_t_left" >
                         <table cellspacing="10px">
                      <tr>
                         <td class="auto-style1"><asp:Label ID="lbl_welcome" runat="server" Text=""></asp:Label> </td>
                          <td class="auto-style1"></td>
                           <td class="auto-style1"></td>
                           <td class="auto-style1"></td>
                          <td class="auto-style1">                          
                              <asp:Label ID="lbl_money" runat="server"></asp:Label></td>
                         
                      </tr>
                  </table>
                    </div>
                        <div id="navi_t_right">
                            <table  cellspacing="10px">
                      <tr>
                          <td> <a href="Login/userOrder.aspx">我的订单</a> </td> 
                         <td> <a href="Login/userMessage.aspx" >个人信息</a> </td>
                         <td> <a href="index.aspx">退出登录</a> </td> 
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
                <div id="content_midle">                                                       
                    <asp:Image ID="Image1" runat="server" Height="434px" ImageAlign="Left" ImageUrl="https://res.vmallres.com/pimages/detailImg/2019/05/09/201905091749076050778.png" Width="645px" />
                    <h1 id="pro-name" style="margin: 0px 0px 10px; padding: 0px; font-size: 21px; font-weight: 400; max-height: 84px; overflow: hidden; color: rgb(58, 58, 58); font-family: 'Helvetica Neue', Helvetica, Arial, 'Microsoft Yahei', 'Hiragino Sans GB', 'Heiti SC', 'WenQuanYi Micro Hei', sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">华为平板 M5 青春版 8.0英寸智能声控平板 哈曼卡顿调音 麒麟710芯片 3GB+32GB WiFi版</h1>
                    <h1 style="margin: 0px 0px 10px; padding: 0px; font-size: 21px; font-weight: 400; max-height: 84px; overflow: hidden; color: rgb(58, 58, 58); font-family: 'Helvetica Neue', Helvetica, Arial, 'Microsoft Yahei', 'Hiragino Sans GB', 'Heiti SC', 'WenQuanYi Micro Hei', sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">价格&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:Label ID="Label1" runat="server" ForeColor="Red">1399</asp:Label>
                    </h1>
                    <h1 style="margin: 0px 0px 10px; padding: 0px; font-size: 21px; font-weight: 400; max-height: 84px; overflow: hidden; color: rgb(58, 58, 58); font-family: 'Helvetica Neue', Helvetica, Arial, 'Microsoft Yahei', 'Hiragino Sans GB', 'Heiti SC', 'WenQuanYi Micro Hei', sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">选择版本&nbsp; <asp:Button ID="Button3" runat="server" Text="WIFI 4GB+64GB" Width="180px" OnClick="Button3_Click" />
&nbsp;
                        &nbsp;</h1>
                    <h1 style="margin: 0px 0px 10px; padding: 0px; font-size: 21px; font-weight: 400; max-height: 84px; overflow: hidden; color: rgb(58, 58, 58); font-family: 'Helvetica Neue', Helvetica, Arial, 'Microsoft Yahei', 'Hiragino Sans GB', 'Heiti SC', 'WenQuanYi Micro Hei', sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button5" runat="server" Text="全网通 4GB+64GB" Width="180px" OnClick="Button5_Click" />
&nbsp;
                        </h1>
                    <h1 style="margin: 0px 0px 10px; padding: 0px; font-size: 21px; font-weight: 400; max-height: 84px; overflow: hidden; color: rgb(58, 58, 58); font-family: 'Helvetica Neue', Helvetica, Arial, 'Microsoft Yahei', 'Hiragino Sans GB', 'Heiti SC', 'WenQuanYi Micro Hei', sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">选择颜色&nbsp; 
                        <asp:Button ID="Button7" runat="server" Text="香槟金" OnClick="Button7_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button8" runat="server" Text="深空蓝" OnClick="Button8_Click" />
                    </h1>
                    <h1 style="margin: 0px 0px 10px; padding: 0px; font-size: 21px; font-weight: 400; max-height: 84px; overflow: hidden; color: rgb(58, 58, 58); font-family: 'Helvetica Neue', Helvetica, Arial, 'Microsoft Yahei', 'Hiragino Sans GB', 'Heiti SC', 'WenQuanYi Micro Hei', sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">商品数量&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:Button ID="Button10" runat="server" Font-Bold="True" ForeColor="Red" Text="+" Width="50px" OnClick="Button10_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged" Width="87px" TextMode="Number">1</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button9" runat="server" Font-Bold="True" ForeColor="Red" Text="-" Width="51px" OnClick="Button9_Click" />
                    </h1>
                    <p style="margin: 0px 0px 10px; padding: 0px; font-size: 21px; font-weight: 400; max-height: 84px; overflow: hidden; color: rgb(58, 58, 58); font-family: 'Helvetica Neue', Helvetica, Arial, 'Microsoft Yahei', 'Hiragino Sans GB', 'Heiti SC', 'WenQuanYi Micro Hei', sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Height="46px" Text="查询库存" Width="107px" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </p>
                    <p style="margin: 0px 0px 10px; padding: 0px; font-size: 21px; font-weight: 400; max-height: 84px; overflow: hidden; color: rgb(58, 58, 58); font-family: 'Helvetica Neue', Helvetica, Arial, 'Microsoft Yahei', 'Hiragino Sans GB', 'Heiti SC', 'WenQuanYi Micro Hei', sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Height="42px" Text="添加订单" Width="104px" OnClick="Button2_Click" />
                    </p>
                    <p style="margin: 0px 0px 10px; padding: 0px; font-size: 21px; font-weight: 400; max-height: 84px; overflow: hidden; color: rgb(58, 58, 58); font-family: 'Helvetica Neue', Helvetica, Arial, 'Microsoft Yahei', 'Hiragino Sans GB', 'Heiti SC', 'WenQuanYi Micro Hei', sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                        &nbsp;</p>
                    <p style="margin: 0px 0px 10px; padding: 0px; font-size: 21px; font-weight: 400; max-height: 84px; overflow: hidden; color: rgb(58, 58, 58); font-family: 'Helvetica Neue', Helvetica, Arial, 'Microsoft Yahei', 'Hiragino Sans GB', 'Heiti SC', 'WenQuanYi Micro Hei', sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                        &nbsp;</p>
                    <p style="margin: 0px 0px 10px; padding: 0px; font-size: 21px; font-weight: 400; max-height: 84px; overflow: hidden; color: rgb(58, 58, 58); font-family: 'Helvetica Neue', Helvetica, Arial, 'Microsoft Yahei', 'Hiragino Sans GB', 'Heiti SC', 'WenQuanYi Micro Hei', sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                        <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
                    </p>
                 </div>
            <!--这是脚部-->
           
                
                </div>
            <br />
                <br />
              <div id="footer">
                 <br />            
                电子商务课程设计网站-Eshop.com电子商城
                 <br />
                  &copy Copyright2019Eshop
             </div>
         </div>
    </form>
</body>
</html>
