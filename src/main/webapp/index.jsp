<html>
<head>
    <%
        pageContext.setAttribute("APP_PATH",request.getContextPath());
    %>
    <link rel="icon"
          type="image/png"
          href="http://example.com/myicon.png">
</head>
<body>
<%--<jsp:forward page="/WEB-INF/views/register.jsp"></jsp:forward>--%>
<h2>Hello World!</h2>
<a href="${APP_PATH}/to_register_page">to_register_page</a>
</body>
</html>
