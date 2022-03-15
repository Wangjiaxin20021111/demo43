package Servlet;

import Service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@SuppressWarnings("all")
public class yougbuzhuce extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            UserService uu=new UserService();
            req.setCharacterEncoding("utf-8");
            resp.setCharacterEncoding("utf-8");
            String num=req.getParameter("num");
            String nicheng=req.getParameter("nicheng");
            String password=req.getParameter("password");
            String email=req.getParameter("email");
            int n=0;
            n=uu.zhuce(num,nicheng,password,email);
            if(n>0)
            {
                PrintWriter pw=resp.getWriter();
                pw.print("您已注册成功");
            }
            else {
                PrintWriter pw=resp.getWriter();
                pw.print("该用户已经被其他人注册");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }
}
