<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userMessage.aspx.cs" Inherits="Login_userMessage" %>

<!DOCTYPE HTML>

<html>
<head>
    <meta charset="utf-8">
    <title> 我的信息Eshop</title> 
    <link rel="shortcut icon" href="../image/icon.PNG" />
    <script type="text/javascript" src="../Admin/lib/jquery/1.9.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../Admin/static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="../Admin/static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="../Admin/lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="../Admin/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="../Admin//h-ui.admin/css/style.css" />
</head>
<script type="text/javascript">
    function SetWinHeight(obj) {
        var win = obj;
        if (document.getElementById) {
            if (win && !window.opera) {
                if (win.contentDocument && win.contentDocument.body.offsetHeight)
                    win.height = win.contentDocument.body.offsetHeight + 40;
                else if (win.Document && win.Document.body.scrollHeight)
                    win.height = win.Document.body.scrollHeight + 40;
            }
        }
    }
</script>
<body>
    <header class="navbar-wrapper">
        <div class="navbar navbar-fixed-top" style="margin:0px;border-bottom-color:darkgreen;border-bottom-style:solid" >
            <div class="container-fluid cl"style="margin:0px;font-size:20px">
                <p style="color:darkgreen;font-size:50px;margin:0px">Eshop</p>
                <nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
                    <ul class="cl">                                          
                        <li><a href="../main.aspx">返回</a><img style="height:15px;width:20px" src="../image/back.jpeg"/></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <aside class="Hui-aside" style="background-color:white;border-right-color:darkgreen;margin-top:40px" >
        <div class="menu_dropdown bk_2">
          
                        <ul>
                        <li><a data-href="userInformation.aspx" data-title="我的资料" href="javascript:void(0)">我的资料</a></li>
                        <li><a data-href= "changeInformation.aspx" data-title="基本资料修改" href="javascript:void(0)">修改资料</a></li>
                        <li><a data-href= "main.html" data-title="收货地址" href="javascript:void(0)">收货地址</a></li>
                          <li><a data-href= "changePwd.aspx" data-title="修改密码" href="javascript:void(0)">修改密码</a></li>
                             <li><a data-href= "charge.aspx" data-title="余额管理" href="javascript:void(0)">余额管理</a></li>
                            </ul>
                                          
        </div>
    </aside>
    <div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onclick="displaynavbar(this)"></a></div>
    <section class="Hui-article-box">
        <div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
            <div class="Hui-tabNav-wp">
                <ul id="min_title_list" class="acrossTab cl">
                    <li class="active">
                        <span title="我的桌面" data-href="userInformation.aspx">我的桌面</span>
                        <em></em></li>
                </ul>
            </div>
            <div class="Hui-tabNav-more btn-group"><a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a></div>
        </div>
        <div id="iframe_box" class="Hui-article">
            <div class="show_iframe">
                <div style="display: none" class="loading"></div>
                <iframe scrolling="yes" frameborder="0" src="userInformation.aspx"></iframe>
            </div>
        </div>
    </section>

    <div class="contextMenu" id="Huiadminmenu">
        <ul>
            
        </ul>
    </div>


    <script type="text/javascript" src="../Admin/lib/layer/2.4/layer.js"></script>
    <script type="text/javascript" src="../Admin/static/h-ui/js/H-ui.min.js"></script>
    <script type="text/javascript" src="../Admin/static/h-ui.admin/js/H-ui.admin.js"></script>


    <script type="text/javascript" src="../Admin/lib/jquery.contextmenu/jquery.contextmenu.r2.js"></script>
    <script type="text/javascript">
       
        function myselfinfo() {
            var index = layer.open({
                type: 2,
                title: '',
                content: 'main.aspx'
            });
            layer.full(index);
          
        }

   


    </script>
</body>

</html>
