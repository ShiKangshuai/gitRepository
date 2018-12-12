<%--
  Created by IntelliJ IDEA.
  User: shikangshuai
  Date: 2018/12/7
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon"
          type="image/png"
          href="http://example.com/myicon.png">
    <%
        pageContext.setAttribute("APP_PATH",request.getContextPath());
    %>
    <title>提示</title>

    <link rel="stylesheet" href="${APP_PATH}/static/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="${APP_PATH}/css/style.css"/>

    <script type="text/javascript" src="${APP_PATH}/static/jQuery/jquery.min.js"></script>
    <script type="text/javascript" src="${APP_PATH}/static/bootstrap/js/bootstrap.js"></script>

</head>
<style>
    body{
        margin-top:20px;
        margin:0 auto;
    }
    .carousel-inner .item img{
        width:100%;
        height:300px;
    }
    .container .row div{
        /* position:relative;
        float:left; */
    }

    font {
        color: #666;
        font-size: 22px;
        font-weight: normal;
        padding-right:17px;
    }
</style>
<body>
<!--
    描述：菜单栏
-->
<div class="container-fluid">
    <div class="col-md-4">
        <%--<img src="${APP_PATH}/static/img/logo2.png" />--%>
    </div>
    <div class="col-md-5">
        <img src="${APP_PATH}/img/header.png" />
    </div>
    <div class="col-md-3" style="padding-top:20px">
        <ol class="list-inline">
            <li><a href="">登录</a></li>
            <li><a href="">注册</a></li>
            <li><a href="">购物车</a></li>
            <li><a href="">我的订单</a></li>
        </ol>
    </div>
</div>
<!--
    描述：导航条
-->
<div class="container-fluid">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">首页</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">手机数码<span class="sr-only">(current)</span></a></li>
                    <li><a href="#">电脑办公</a></li>
                    <li><a href="#">电脑办公</a></li>
                    <li><a href="#">电脑办公</a></li>
                </ul>
                <form class="navbar-form navbar-right" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
</div>

<div class="container" style="width:100%;height: 50%">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-6">
            <h2>${msg}</h2>
        </div>
    </div>
</div>

<div style="margin-top:50px;">
    <img src="${APP_PATH}/img/footer.jpg" width="100%" height="78" alt="我们的优势" title="我们的优势" />
</div>

<div style="text-align: center;margin-top: 5px;">
    <ul class="list-inline">
        <li><a href="">关于我们</a></li>
        <li><a>联系我们</a></li>
        <li><a>招贤纳士</a></li>
        <li><a>法律声明</a></li>
        <li><a>友情链接</a></li>
        <li><a target="_blank">支付方式</a></li>
        <li><a target="_blank">配送方式</a></li>
        <li><a>服务声明</a></li>
        <li><a>广告声明</a></li>
    </ul>
</div>
<div style="text-align: center;margin-top: 5px;margin-bottom:20px;">
    Copyright &copy; 2017-2018 康帅商城 版权所有
</div>

<script>

</script>
</body>
</html>
