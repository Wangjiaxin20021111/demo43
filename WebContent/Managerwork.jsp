<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Service.UserService" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="POJI.User" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: 25043
  Date: 2022/3/14
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    try {
        UserService us=new UserService();
        ArrayList<User> list= null;
        list = us.lookupuser();
        request.setAttribute("list",list);
    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace();
    }
%>
<center>
<table border="7" width="70%">
    <tr>
        <td>账号</td>
        <td>昵称</td>
        <td>密码</td>
        <td>邮箱</td>
        <td>修改用户信息</td>
        <td>删除此用户</td>
        <td>查看此用户的所有文章</td>
    </tr>
<c:forEach items="${requestScope.list}" var="User">
    <tr>
        <td>${User.num}</td>
        <td>${User.nicheng}</td>
        <td>${User.password}</td>
        <td>${User.email}</td>
        <td>
            <a href="Managerwork2.jsp?usernum=${User.num}">
                点击这里修改
            </a>
        </td>
        <td>
            <a href="DeleteUser.jsp?usernum=${User.num}">
                点击这里删除
            </a>
        </td>
        <td>
             <a href="UserWriting.jsp?usernum=${User.num}">
                 点击这里查看
             </a>
        </td>
    </tr>
</c:forEach>
</table>
</center>
</body>
</html>
