<%@ page import="Service.UserService" %>
<%@ page import="POJI.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: 25043
  Date: 2022/3/14
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String num=request.getParameter("num");
    String password=request.getParameter("password");
    if(num.equals("123")&&password.equals("123"))
    {
        out.print("恭喜管理员登录成功");
        request.getRequestDispatcher("Managerwork.jsp").forward(request,response);
    }
    else {
        out.print("管理员登录失败");
    }
%>
</body>
</html>
