<%@ page import="POJI.Wenzhang" %>
<%@ page import="Service.UserWritingService" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="Condition.Condition" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 25043
  Date: 2022/3/15
  Time: 10:35
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
        UserWritingService us=new UserWritingService();
        ArrayList<Wenzhang> list= null;
        list = us.writerlookupallthewriting();
        request.setAttribute("list",list);
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String usernum=request.getParameter("usernum");
        if(list!=null) {
            request.setAttribute("list", list);
            request.setAttribute("usernum",usernum);
        }
        else {
            out.print("不存在");
        }
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
           <td>收藏</td>
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
                    <a href="UserWorkWrinting2.jsp?usernum=${requestScope.usernum}&writingnum=${Wenzhang.num}&neirong=${Wenzhang.neirong}&tittle=${Wenzhang.tittle}">
                        点击这里收藏
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>
</center>
</body>
</html>
