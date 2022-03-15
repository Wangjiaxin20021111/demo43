package Service;

import Condition.Condition;
import DAO.UserDAO;
import POJI.User;

import java.sql.SQLException;
import java.util.ArrayList;
@SuppressWarnings("all")
public class UserService {
    UserDAO us=new UserDAO();
    public int zhuce(String num, String nicheng, String password,String email) throws SQLException, ClassNotFoundException {
        int n=0;
        String sql="insert into user(num,nicheng,password,email) values('"+num+"','"+nicheng+"','"+password+"','"+email+"')";
        n=us.Userzhuce(sql);
        if(n>0) {
            return n;
        }
        else {
            return 0;
        }
    }

    public User finduser(String num, String password) throws ClassNotFoundException, SQLException {
        User uu=null;
        String sql="select*from user where num='"+num+"' and password='"+password+"'";
        ArrayList<User> list =null;
           list=us.finduser(sql);
         if(list!=null)
         {
             uu=list.get(0);
             return uu;
         }
         else {
             return null;
         }
    }

    public int change(Condition co) throws ClassNotFoundException {
      int k=0;
      String sql=null;
       if(co.chang1.equals("nicheng"))
       {
          sql="update user set nicheng='"+co.change+"' where num='"+co.num+"'";
       }
       if(co.chang1.equals("password"))
       {
           sql="update user set password='"+co.change+"' where num='"+co.num+"'";
       }
       k=us.change(sql);
       return k;
    }

    public ArrayList<User> lookupuser() throws SQLException, ClassNotFoundException {
        ArrayList<User> list=null;
        String sql="select*from user";
        list=us.lookupuser(sql);
        if(list!=null)
        {
            return list;
        }
        else {
            return null;
        }
    }

    public int Managerchange(Condition co) throws ClassNotFoundException {
        int j = 0;
        System.out.println("用户是：" + co.num + "修改内容是" + "..." + co.nicheng + "..." + co.managerpingjia + "...");
        String sql = null;
        String sgl1=null;
        if (co.nicheng != null && co.nicheng !="")
        {
            sql = "update user set nicheng='"+co.nicheng+"' where num='"+co.num+"'";
            j=us.Managerchang(sql);
        }
        if(co.managerpingjia!=""&&co.managerpingjia!="")
        {
            sgl1= "update user set managerpingjia='"+co.managerpingjia+"' where num='"+co.num+"'";
            j=us.Managerchang(sgl1);
        }
        return j;
    }

    public int Delete(String usernum) throws ClassNotFoundException {
        int j=0;
        String sql="delete from user where num='"+usernum+"'";
        j=us.change(sql);
        return j;
    }

    public int changewriting(Condition co) throws ClassNotFoundException {
        int j=0;
        System.out.println("文章索引是..."+co.Writingnum+"修改条件是:"+co.chang1+"..."+"修改后的内容是："+co.change);
        String sql=null;
        String sql1=null;
        if(co.chang1!=""&&co.chang1!=null&&co.chang1.equals("tittle"))
        {
            sql="update wenzhang set tittle='"+co.change+"' where num="+co.Writingnum;
            j=us.change(sql);
        }
        if(co.chang1!=""&&co.chang1!=null&&co.chang1.equals("neirong"))
        {
            sql="update wenzhang set neirong='"+co.change+"' where num="+co.Writingnum;
            j=us.change(sql);
        }
        if(co.chang1!=""&&co.chang1!=null&&co.chang1.equals("biaoqian")||co.chang1.equals("后端")||co.chang1.equals("前端")||co.chang1.equals("客户端")||co.chang1.equals("其他"))
        {
            sql="update wenzhang set biaoqian='"+co.change+"' where num="+co.Writingnum;
            j=us.change(sql);
        }
        return j;
    }
}
