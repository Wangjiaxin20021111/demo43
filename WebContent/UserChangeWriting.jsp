<%--
  Created by IntelliJ IDEA.
  User: 25043
  Date: 2022/3/14
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //用户根据文章索引修改自己的文章内容
    int num= Integer.parseInt(request.getParameter("num"));
    request.setAttribute("num",num);
%>
<center>
    <form action="UserChangeWritingwork2.jsp" method="post">
    <table border="7" width="70%">
        <tr>
            <td>请选择您要修改的内容</td>
            <td>
                <input type="radio" name="change1" value="tittle" required/>标题
                <input type="radio" name="change1" value="neirong" required/>内容
                <input type="radio" name="change1" value="biaoqian" required/>标签
            </td>
        </tr>
        <tr>
             <td>请输入修改之后的内容</td>
             <td><input type="text" name="change" required/></td>
             <input type="hidden" name="num" value="${requestScope.num}">
        </tr>
        <input type="submit" value="提交">
    </table>
    </form>
</center>
</body>
</html>
