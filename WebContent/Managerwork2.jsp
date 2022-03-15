<%--
  Created by IntelliJ IDEA.
  User: 25043
  Date: 2022/3/14
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String usernum=request.getParameter("usernum");
    request.setAttribute("usernum",usernum);
%>
<form action="Managerwork3.jsp" method="post">
<center>
    <table border="7" width="70%">
         <tr>
             <td>请输入新的用户昵称</td>
             <td><input type="text" name="newnicheng"></td>
         </tr>
          <tr>
              <td>请输入您对该用户的评价</td>
              <td><input type="text" name="managerpingjia"></td>
              <input type="hidden" name="usernum" value="${requestScope.usernum}">
          </tr>
    </table>
          <input type="submit" value="提交修改">
</center>
</form>
</body>
</html>
