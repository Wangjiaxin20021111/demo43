package Servlet;

import Service.UserWritingService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class UserWritingServlet extends HttpServlet {
    @Override@SuppressWarnings("all")
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            UserWritingService us=new UserWritingService();
            req.setCharacterEncoding("utf-8");
            resp.setCharacterEncoding("utf-8");
            String tittle=req.getParameter("tittle");
            String kind=req.getParameter("kind");
            String writing=req.getParameter("writing");//内容
            String num=req.getParameter("num");//作者号码
            int j= 0;
            j = us.write(tittle,kind,writing,num);
            if(j>0)
            {
                PrintWriter pw=resp.getWriter();
                pw.print("您已经成功录入文章，请耐心等待管理员审核");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
