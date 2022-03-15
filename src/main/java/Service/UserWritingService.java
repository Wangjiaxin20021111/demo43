package Service;

import Condition.Condition;
import DAO.UserWritingDAO;
import POJI.Wenzhang;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

@SuppressWarnings("all")
public class UserWritingService {
    UserWritingDAO ud=new UserWritingDAO();

    public int write(String tittle, String kind, String writing, String num) throws ClassNotFoundException {
        int z=0;
        String sql="insert into wenzhang(biaoqian,neirong,writer,yueduliang,tittle,zhuangtai,dianzanliang,shoucangliang) values('"+kind+"',' "+writing+" ','"+num+"',"+0+",' "+tittle+" ','未审核',0,0)";
        z=ud.write(sql);
        if(z>0) {
            return z;
        }
        else {
            return 0;
        }
    }

    public ArrayList<Wenzhang> lookupWriting(String num) throws SQLException, ClassNotFoundException {
        ArrayList<Wenzhang> list=null;
        String sql="select*from wenzhang where writer='"+num+"'";
        list=ud.lookupWriting(sql);
        if(list.size()>0)
        {
            return list;
        }
        else {
            return null;
        }
    }

    public int writingwork(String usernum,int writingnum, String neirong, String tittle) throws ClassNotFoundException, SQLException {
        int k=0;
        String sql="insert into informationuser(num,shoucangdewenzhang,tittle,neirong) values('"+usernum+"',"+writingnum+",'"+tittle+"','"+neirong+"')";
        String sql1="update wenzhang set shoucangliang=shoucangliang+1 where num="+writingnum;


        String sql3="selec*from informationuser where num='"+usernum+"' and shoucangdewenzhang="+writingnum;
        System.out.println(sql3);

        boolean a=ud.check(sql3);
        System.out.println(a);
        //出现了异常->结果集为空-->返回真->可以继续执行
        //没出现异常->结果集不为空->返回假->不能继续执行
        if(a==true)
        {
            System.out.println(sql1);
            k = ud.addshoucang(sql, sql1);
            return k;
        }
        else {
            return 0;
        }
    }

    public ArrayList<Wenzhang> writerlookupallthewriting() throws SQLException, ClassNotFoundException {
        ArrayList<Wenzhang> list=new ArrayList<>();
        String sql="select*from wenzhang";
        list=ud.lookupWriting(sql);
        if(list!=null) {
            return list;
        }
        else {
            return null;
        }
    }

    public ArrayList<Wenzhang> writerlookupallthewriting2(Condition co) throws SQLException, ClassNotFoundException {
        ArrayList<Wenzhang> list=new ArrayList<>();
        System.out.println("查询条件是..."+"作者"+co.writer+"..."+"种类"+co.kind+"..."+"内容..."+co.neirong);
        String sql="select*from wenzhang where 1=1";
        if(co.neirong!=null&&co.neirong!="")
        {
            sql=sql+" and neirong like '%"+co.neirong+"%'";
        }
        if(co.writer!=null&&co.writer!="")
        {
            sql=sql+" and writer='"+co.writer+"'";
        }
        if(co.tittle!=null&&co.tittle!="")
        {
            sql=sql+" and tittle like '%"+co.tittle+"%'";
        }
        list=ud.lookupWriting(sql);
        if(list!=null) {
            return list;
        }
        else {
            return null;
        }
    }
}
