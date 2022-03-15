package DAO;

import Condition.Connect;
import POJI.User;
import POJI.Wenzhang;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

@SuppressWarnings("all")
public class UserWritingDAO {
    public int write(String sql) throws ClassNotFoundException {
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

    public ArrayList<Wenzhang> lookupWriting(String sql) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection coon=Connect.co();
        Statement stmt=coon.createStatement();
        ResultSet rr=stmt.executeQuery(sql);
        ArrayList<Wenzhang> list=new ArrayList<>();
        Wenzhang w=null;
        int num;
        String biaoqian;
        String neirong;
        String writer;
        String zhuangtai;
        int yueduliang;
        String tittle;
        int dianzanliang;
        int shoucangliang;
        while(rr.next())
        {
           w=new Wenzhang();
           num=rr.getInt(1);
           biaoqian=rr.getString("biaoqian");
           neirong=rr.getString("neirong");
           writer=rr.getString("writer");
           zhuangtai=rr.getString("zhuangtai");
           yueduliang=rr.getInt(6);
           tittle=rr.getString("tittle");
           dianzanliang=rr.getInt(8);
           shoucangliang=rr.getInt(9);

           w.setNum(num);
           w.setTittle(tittle);
           w.setBiaoqian(biaoqian);
           w.setNeirong(neirong);
           w.setWriter(writer);
           w.setZhuangtai(zhuangtai);
           w.setYueduliang(yueduliang);
           w.setDianzanliang(dianzanliang);
           w.setShoucangliang(shoucangliang);

           list.add(w);
        }
        if(list.size()>0)
        {
            return list;
        }
        else {
            return null;
        }
    }

    public int addshoucang(String sql,String sql1) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        //先遍历查找该用户是否已经收藏过该文章


            Connection coon = null;
            try {
                int n = 0, n1 = 0;
                coon = Connect.co();
                Statement stmt = coon.createStatement();
                //查询用户是否重复收藏同一篇wenzhang使用sql3

                /*如果执行成功的话，会返回一个值，它的值为1，如果没有执行成功，返回0*/
                n = stmt.executeUpdate(sql);
                n1 = stmt.executeUpdate(sql1);
                if (n == 1 && n1 == 1) {
                    coon.close();
                    stmt.close();
                    return n;
                } else {
                    coon.close();
                    stmt.close();
                    return n;
                }

            } catch (SQLException e) {
                e.printStackTrace();
                return 0;
            }

    }

    public boolean check(String sql3) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection coon = Connect.co();
        Statement stmt = coon.createStatement();
        boolean rr = stmt.execute(sql3);
        return rr;
    }
}
