<%@ page import="Service.UserService" %>
<%@ page import="Condition.Condition" %><%--
  Created by IntelliJ IDEA.
  User: 25043
  Date: 2022/3/14
  Time: 16:23
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
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        UserService us=new UserService();
        String newnicheng=request.getParameter("newnicheng");
        String managerpingjia=request.getParameter("managerpingjia");
        String usernum=request.getParameter("usernum");
        int change=6;
        Condition co=new Condition(newnicheng,managerpingjia,usernum,change);
        int n=0;
        n=us.Managerchange(co);
        if(n>0)
        {
            out.print("修改成功");
        }
        else {
            out.print("修改失败");
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
%>
</body>
</html>
