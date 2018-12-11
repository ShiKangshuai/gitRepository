<%--
  Created by IntelliJ IDEA.
  User: shikangshuai
  Date: 2018/12/7
  Time: 9:28
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
    <title>用户注册</title>

    <link rel="stylesheet" href="${APP_PATH}/static/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="${APP_PATH}/static/dateTimePicker/bootstrap-datetimepicker.css"/>
    <link rel="stylesheet" href="${APP_PATH}/css/style.css"/>

    <script type="text/javascript" src="${APP_PATH}/static/jQuery/jquery.min.js"></script>
    <script type="text/javascript" src="${APP_PATH}/static/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="${APP_PATH}/static/dateTimePicker/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="${APP_PATH}/static/dateTimePicker/bootstrap-datetimepicker.zh-CN.js"></script>
    <script type="text/javascript" src="${APP_PATH}/js/register.js"></script>
</head>
<style>
    .msgAlert{
        font-weight: bold;
        font-size:20px;
        color: red;
    }
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





<div class="container" style="width:100%;background:url('${APP_PATH}/img/regist_bg.jpg');">
    <div class="row">

        <div class="col-md-2"></div>
        <div class="col-md-8" style="background:#fff;padding:40px 80px;margin:30px;border:7px solid #ccc;">
            <font>会员注册</font>USER REGISTER
            <form class="form-horizontal" id="registerForm" style="margin-top:5px;">
                <div class="form-group">
                    <label class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-5">
                        <input type="text" data-rule="" class="form-control" name="username" id="username" placeholder="请输入用户名">
                    </div>
                    <div class="col-md-1"><span class="msgAlert">*</span></div>
                    <div class="col-md-4 username-input-error input-error"></div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">邮箱</label>
                    <div class="col-sm-5" style="float: left">
                        <input type="email" data-rule="" class="form-control" name="email" id="email"  placeholder="Email">

                    </div>
                    <div class="col-md-1"><span class="msgAlert">*</span></div>
                    <div class="col-md-4 "><span class="email-input-error input-error" ></span></div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-5">
                        <input type="password" data-rule="" class="form-control" name="password" id="password" placeholder="请输入密码">
                    </div>
                    <div class="col-md-1"><span class="msgAlert">*</span></div>
                    <div class="col-md-4 password-input-error input-error"></div>
                </div>
                <%-- <div class="form-group">
                     <label class="col-sm-2 control-label">确认密码</label>
                     <div class="col-sm-5">
                         <input type="password" class="form-control" name="confpwd" id="confpwd" placeholder="请输入确认密码">
                     </div>
                     <div class="col-md-1"><span class="msgAlert">*</span></div>
                     <div class="col-md-4"></div>
                 </div>--%>
                <div class="form-group">
                    <label class="col-sm-2 control-label">出生日期</label>
                    <div  class="col-sm-5">
                        <div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd">
                            <input class="form-control" style="width:246px;" size="16" type="text" value="" name="birthday" readonly>
                            <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                        </div>
                    </div>
                    <div class="col-md-1"><span class="msgAlert">*</span></div>
                    <div class="col-md-4 birthday-input-error input-error"></div>
                </div>

                <div class="form-group">
                    <label  class="col-sm-2 control-label">姓名</label>
                    <div class="col-sm-5">
                        <input type="text" data-rule="" class="form-control" name="name" id="name" placeholder="请输入姓名">
                    </div>
                    <div class="col-md-1"><span class="msgAlert">*</span></div>
                    <div class="col-md-4 name-input-error input-error"></div>
                </div>
                <div class="form-group opt">
                    <label class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-5">
                        <label class="radio-inline">
                            <input type="radio" name="sex" id="sex1_add_input" value="男" checked="checked"> 男
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="sex" id="sex2_add_input" value="女"> 女
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">手机号码</label>
                    <div class="col-sm-5">
                        <input type="text" data-rule="" class="form-control" name="telephone" id="telephone" placeholder="请输入手机号码">
                    </div>
                    <div class="col-md-1"><span class="msgAlert">*</span></div>
                    <div class="col-md-4 telephone-input-error input-error"></div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="button" id="addBtn" width="100" value="注册"  border="0"
                               style="height:35px;width:100px;" class="btn btn-primary" onclick="addUser()">
                        <input type="reset" id="resetBtn" class="btn btn-success" value="重置" style="height:35px;width:100px;">
                    </div>
                </div>
            </form>
        </div>

        <div class="col-md-2"></div>

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
