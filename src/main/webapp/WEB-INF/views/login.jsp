<%@ page import="com.fasterxml.jackson.annotation.JsonInclude" %><%--
  Created by IntelliJ IDEA.
  User: shikangshuai
  Date: 2018/12/7
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="icon"
          type="image/png"
          href="http://example.com/myicon.png">
    <title>用户登陆</title>
    <%
        pageContext.setAttribute("APP_PATH",request.getContextPath());
    %>
    <link rel="stylesheet" href="${APP_PATH}/static/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="${APP_PATH}/css/style.css"/>

    <script type="text/javascript" src="${APP_PATH}/static/jQuery/jquery.min.js"></script>
    <script type="text/javascript" src="${APP_PATH}/static/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="${APP_PATH}/js/login.js"></script>

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
</head>

<body>
<!--
    描述：菜单栏
-->
<%@include file="header.jsp"%>
<div class="container"
     style="width:100%;height:460px;background:#FF2C4C url('${APP_PATH}/img/loginbg.jpg') no-repeat;">
    <div class="row">
        <div class="col-md-7">
            <!--<img src="image/login.jpg" width="500" height="330" alt="会员登录" title="会员登录">-->
        </div>

        <div class="col-md-5">
            <div style="width:440px;border:1px solid #E7E7E7;padding:20px 0 20px 30px;border-radius:5px;margin-top:60px;background:#fff;">
                <font>会员登录</font>USER LOGIN

                <div>&nbsp;</div>
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-6 input-error"style="display: block" id="msg"></div>
                </div>
                <div>&nbsp;</div>
                <form class="form-horizontal">

                    <div class="form-group">
                        <label for="username"  class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-6">
                            <input type="text" name="username" data-rule="" class="form-control" id="username" placeholder="请输入用户名">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-6 username-input-error input-error"></div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-6">
                            <input type="password" name="password" data-rule="" class="form-control" id="" placeholder="请输入密码">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-6 password-input-error input-error"></div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">验证码</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="inputPassword3" placeholder="请输入验证码">
                        </div>
                        <div class="col-sm-3">
                            <img src="${APP_PATH}/img/captcha.jhtml"/>
                        </div>

                    </div>
                    <%--<div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> 自动登录
                                </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <label>
                                    <input type="checkbox"> 记住用户名
                                </label>
                            </div>
                        </div>
                    </div>--%>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                           <%-- <input type="button" width="100" value="登录" class="btn btn-primary" border="0" style="height:35px;">--%>
                               <input type="button" id="addBtn" width="100" value="登录"  border="0"
                                      style="height:35px;width:100px;" class="btn btn-primary" onclick="loginIn()">
                               <input type="reset" id="resetBtn" class="btn btn-success" value="重置" style="height:35px;width:100px;">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>
