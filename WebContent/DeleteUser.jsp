<%@ page import="Service.UserService" %><%--
  Created by IntelliJ IDEA.
  User: 25043
  Date: 2022/3/14
  Time: 16:14
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
        String usernum=request.getParameter("usernum");
        int n=0;
        n=us.Delete(usernum);
        if(n>0)
        {
            out.print("成功删除该用户");
        }
        else {
            out.print("未成功删除");
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

%>
</body>
</html>
