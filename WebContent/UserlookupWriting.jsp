<%@ page import="java.util.ArrayList" %>
<%@ page import="POJI.Wenzhang" %>
<%@ page import="Service.UserWritingService" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: 25043
  Date: 2022/3/15
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
        /*获取用户的号码，即自己的号码*/
        String usernum=request.getParameter("usernum");
        request.setAttribute("usernum",usernum);
        request.getRequestDispatcher("UserlookupWriting2.jsp").forward(request,response);
%>
