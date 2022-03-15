<%@ page import="Condition.Condition" %>
<%@ page import="Service.UserService" %><%--
  Created by IntelliJ IDEA.
  User: 25043
  Date: 2022/3/14
  Time: 13:31
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
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String change1=request.getParameter("change1");
        String change=request.getParameter("change");
        String num=request.getParameter("num");
        String nicheng;
        String password;
        /*change1为修改的条件*/
        switch (change1)
        {
            case "nicheng":
            {
                change1="nicheng";
                break;
            }
            case "password":
            {
                change1="password";
                break;
            }
            default:
            {
                break;
            }
        }
        /*
        System.out.println(nicheng+"..."+password+"..."+change);
        Condition co=new Condition(nicheng,password,change,num);*/
        Condition co=new Condition(change1,change,num);
        int j=0;
        j=us.change(co);
        if(j>0)
        {
            out.print("修改成功");
        }
        else {
            out.print("修改失败！");
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

%>
</body>
</html>
