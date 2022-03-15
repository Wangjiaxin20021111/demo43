<%@ page import="Service.UserWritingService" %><%--
  Created by IntelliJ IDEA.
  User: 25043
  Date: 2022/3/15
  Time: 9:15
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
        int n=0;
        UserWritingService us=new UserWritingService();
        String usernum=request.getParameter("usernum");//用户自己的编号
        System.out.println(usernum);
        int writingnum= Integer.parseInt(request.getParameter("writingnum"));//文章的编号
        String neirong=request.getParameter("neirong");//文章的内容
        String tittle=request.getParameter("tittle");//文章的标题
        System.out.println(usernum+"..."+writingnum+"..."+neirong+"..."+tittle+"...");
        n=us.writingwork(usernum,writingnum,neirong,tittle);
        if(n>0)
        {
            out.print("收藏成功");
        }
        else {
            out.print("您已经收藏过该文章");
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

%>
</body>
</html>
