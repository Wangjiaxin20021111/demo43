package Servlet;

import POJI.User;
import Service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

public class Yougulogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            UserService us=new UserService();
            req.setCharacterEncoding("utf-8");
            resp.setCharacterEncoding("utf-8");
            String num=req.getParameter("num");
            String password=req.getParameter("password");
            User uu=null;
            uu=us.finduser(num,password);
            if(uu!=null)
            {
                System.out.println("成功登录!");
                req.setAttribute("user",uu.getNicheng());
                req.setAttribute("userobject",uu);
                req.getRequestDispatcher("UserWork.jsp").forward(req,resp);
            }
            else {
                PrintWriter pw=resp.getWriter();
                pw.print("用户名与密码不匹配");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
