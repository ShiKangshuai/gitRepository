<%--
  Created by IntelliJ IDEA.
  User: shikangshuai
  Date: 2018/12/12
  Time: 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<meta http-equiv="refresh" content="4;url='/to_login_page'">--%>
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
<%@include file="header.jsp"%>
<div class="container" style="width:100%;height: 50%">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-6">
            <h2>${msg}</h2>
        </div>
    </div>
</div>
<%@include file="footer.jsp"%>

<script>

</script>
</body>
</html>
