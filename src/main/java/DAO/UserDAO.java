package DAO;

import Condition.Connect;
import POJI.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

@SuppressWarnings("all")
public class UserDAO {
    public int Userzhuce(String sql) throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection coon = null;
        try {
            int n=0;
            coon = Connect.co();
            Statement stmt = coon.createStatement();
            /*如果执行成功的话，会返回一个值，它的值为1，如果没有执行成功，返回0*/
            n = stmt.executeUpdate(sql);
            if(n==1)
            {
                coon.close();
                stmt.close();
                return n;
            }
            else {
                coon.close();
                stmt.close();
                return n;
            }
        } catch (SQLException e) {
            return 0;
        }
    }

    public ArrayList<User> finduser(String sql) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection coon=Connect.co();
        Statement stmt=coon.createStatement();
        ResultSet rr=stmt.executeQuery(sql);
        String num;
        String password;
        String nicheng;
        User uu=null;
        ArrayList<User> list=new ArrayList<>();
        while (rr.next())
        {
            uu=new User();
            num=rr.getString("num");
            password=rr.getString("password");
            nicheng=rr.getString("nicheng");
            uu.setNicheng(nicheng);
            uu.setNum(num);
            uu.setPassword(password);
            list.add(uu);
        }
        coon.close();
        stmt.close();
        if(list.size()>0)
        {
            return list;
        }
        else
        {
            return null;
        }
    }
    //游客修改自身信息，游客修改文章信息。
    public int change(String sql) throws ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection coon = null;
        try {
            int n=0;
            coon = Connect.co();
            Statement stmt = coon.createStatement();
            /*如果执行成功的话，会返回一个值，它的值为1，如果没有执行成功，返回0*/
            n = stmt.executeUpdate(sql);
            if(n==1)
            {
                coon.close();
                stmt.close();
                return n;
            }
            else {
                coon.close();
                stmt.close();
                return n;
            }
        } catch (SQLException e) {
            return 0;
        }
    }

    public ArrayList<User> lookupuser(String sql) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection coon=Connect.co();
        Statement stmt=coon.createStatement();
        ResultSet rr=stmt.executeQuery(sql);
        ArrayList<User> list=new ArrayList<>();
        User user=null;
        String num;
        String password;
        String nicheng;
        String email;
        while(rr.next())
        {
            user=new User();
            num= rr.getString("num");
            password=rr.getString("password");
            nicheng=rr.getString("nicheng");
            email=rr.getString("email");
            user.setNum(num);
            user.setPassword(password);
            user.setNicheng(nicheng);
            user.setEmail(email);
            list.add(user);
        }
        if(list.size()>0)
        {
            return list;
        }
        else {
            return null;
        }
    }

    public int Managerchang(String sql) throws ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection coon = null;
        try {
            int n=0,n1=0;
            coon = Connect.co();
            Statement stmt = coon.createStatement();
            /*如果执行成功的话，会返回一个值，它的值为1，如果没有执行成功，返回0*/
            n = stmt.executeUpdate(sql);
            if(n==1)
            {
                coon.close();
                stmt.close();
                return n;
            }
            else {
                coon.close();
                stmt.close();
                return n;
            }
        } catch (SQLException e) {
            return 0;
        }
    }
}
