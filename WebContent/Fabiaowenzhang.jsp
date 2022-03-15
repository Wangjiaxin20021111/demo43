<%@ page import="Service.UserWritingService" %><%--
  Created by IntelliJ IDEA.
  User: 25043
  Date: 2022/3/14
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String usernum=request.getParameter("num");
    request.setAttribute("usernum",usernum);
%>
<form action="http://localhost:8080/demo43_war_exploded/UserWritingServlet" method="post">
<table border="7" width="70%">
    <tr>
        <td>设置文章的标题</td>
        <td><input type="text" name="tittle" required/></td>
    </tr>
     <tr>
         <td>请选择文章的类别</td>
         <td>
             <input type="radio" name="kind" value="前端"required/>与前端有关
             <input type="radio" name="kind" value="后端"required/>与后端有关<br>
             <input type="radio" name="kind" value="客户端"required/>与客户端有关
             <input type="radio" name="kind" value="其他"required/>其他类别的文章<br>
         </td>
     </tr>
    <tr>
         <td>输入文本内容</td>
        <td>
            <input type="text" name="writing" required/>
            <input type="hidden" name="num" value="${requestScope.usernum}">
        </td>
    </tr>
    <tr>
        <td>点击提交</td>
        <td><input type="submit" value="提交文章"></td>
    </tr>
</table>
</form>
</body>
</html>
