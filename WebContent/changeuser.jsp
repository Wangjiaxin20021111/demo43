<%--
  Created by IntelliJ IDEA.
  User: 25043
  Date: 2022/3/14
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    String num=request.getParameter("num");
    request.setAttribute("num",num);
%>
<body>
 <div style="text-align: center;">
   <form action="changeuser2.jsp" method="post">
     <table  border="7" width="70%">
         <tr>
         <td>请选择您具体要修改的内容</td>
         <td>
              <input type="radio" name="change1" value="nicheng" required/>昵称
              <input type="radio" name="change1" value="password" required/>密码
         </td>
         </tr>
         <tr>
             <td>请输入修改后的内容（新的密码或者新的昵称）</td>
             <td><input type="text" name="change" required/></td>
         </tr>
         <tr>
          <input type="hidden"  name="num" value="${requestScope.num}">
          <input type="submit" value="提交">
         </tr>
     </table>
   </form>
 </div>
</body>
</html>
