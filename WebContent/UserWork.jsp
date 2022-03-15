<%--
  Created by IntelliJ IDEA.
  User: 25043
  Date: 2022/3/14
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
<h1>欢迎${requestScope.user}登录！</h1>
    <table border="7" width="70%">
        <tr>
            <td>您的账号</td>
            <td>${requestScope.userobject.num}</td>
        </tr>
        <tr>
            <td>您的昵称</td>
            <td>${requestScope.userobject.nicheng}</td>
        </tr>
        <tr>
            <td>修改信息</td>
            <td>
                 <a href="changeuser.jsp?num=${requestScope.userobject.num}">
                     点击此处修改您的信息，包括账号，密码，昵称
                 </a>
            </td>
        </tr>
        <tr>
            <td>发表文章</td>
            <td>
                <a href="Fabiaowenzhang.jsp?num=${requestScope.userobject.num}">
                    点击这里发表文章
                </a>
            </td>
        </tr>
        <tr>
            <td>查看自己已经发表的文章</td>
            <td>
                <a href="UserWriting.jsp?num=${requestScope.userobject.num}">
                    点击这里
                </a>
            </td>
        </tr>
        <tr>
            <td>查看文章</td>
            <td>
                <a href="UserlookupWriting.jsp?usernum=${requestScope.userobject.num}">
                    点击这里查看所有文章
                </a>
            </td>
        </tr>
        <tr>
            <td>查看我的收藏</td>
            <td>
                <a href="Myinformation.jsp?usernum=${requestScope.userobject.num}">
                    点击这里查看我的收藏
                </a>
            </td>
        </tr>
    </table>
</center>
</body>
</html>
