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
<%@include file="header.jsp"%>
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
<%@include file="footer.jsp"%>

<script>

</script>
</body>
</html>
