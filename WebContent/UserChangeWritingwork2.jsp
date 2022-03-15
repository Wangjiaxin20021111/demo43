<%@ page import="Service.UserService" %>
<%@ page import="Condition.Condition" %><%--
  Created by IntelliJ IDEA.
  User: 25043
  Date: 2022/3/14
  Time: 21:19
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
        //num为文章索引
        int Writingnum= Integer.parseInt(request.getParameter("num"));
        //change1为文章修改的条件
        String change1=request.getParameter("change1");
        //change为修改的内容
        String change=request.getParameter("change");
        Condition co=new Condition(Writingnum,change1,change);
        int n=us.changewriting(co);
        if(n>0)
        {
            out.print("您已经修改成功!");
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
%>
</body>
</html>
