<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Service.UserWritingService" %>
<%@ page import="POJI.Wenzhang" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: 25043
  Date: 2022/3/14
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //用户自己查看自己写的文章并且完成修改

    try {
        String num=request.getParameter("num");
        UserWritingService us= new UserWritingService();
        ArrayList<Wenzhang> lis= null;
        lis = us.lookupWriting(num);
        request.setAttribute("list",lis);
    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace();
    }

%>
<center>
<table border="7" width="70%">
    <tr>
        <td>文章编号（不分顺序）</td>
        <td>标签</td>
        <td>内容</td>
        <td>作者</td>
        <td>状态</td>
        <td>阅读量</td>
        <td>点赞量</td>
        <td>收藏量</td>
        <td>文章标题</td>
        <td>修改文章</td>
    </tr>
<c:forEach items="${requestScope.list}" var="Wenzhang">
     <tr>
         <td>${Wenzhang.num}</td>
         <td>${Wenzhang.biaoqian}</td>
         <td>${Wenzhang.neirong}</td>
         <td>${Wenzhang.writer}</td>
         <td>${Wenzhang.zhuangtai}</td>
         <td>${Wenzhang.yueduliang}</td>
         <td>${Wenzhang.dianzanliang}</td>
         <td>${Wenzhang.shoucangliang}</td>
         <td>${Wenzhang.tittle}</td>
         <td>
             <a href="UserChangeWriting.jsp?num=${Wenzhang.num}">
                 修改文章点击这里
             </a>
         </td>
     </tr>
</c:forEach>
</table>
</center>
</body>
</html>
