package Condition;

public class Condition {
    public String nicheng;
    public String password;
    public String change;
    public String num;
    public String chang1;
    public String managerpingjia;
    public int Writingnum;
    public String tittle;
    public String neirong;
    public  String kind;
    public String writer;
    public String usernum;
    public Condition(String nicheng,String password,String change,String num)
    {
        this.nicheng=nicheng;
        this.password=password;
        this.change=change;
        this.num=num;
    }

    public Condition(String change1, String change,String num) {
        this.chang1=change1;
        this.change=change;
        this.num=num;
    }

    public Condition(String newnicheng, String managerpingjia, String usernum, int change) {
        this.nicheng=newnicheng;
        this.managerpingjia=managerpingjia;
        this.num=usernum;
    }

    public Condition(int Writingnum, String change1, String change) {
        this.Writingnum=Writingnum;
        this.chang1=change1;
        this.change=change;
    }

    public Condition(int a, String tittle, String neirong, String kind, String writer,String usernum) {
        this.tittle=tittle;
        this.neirong=neirong;
        this.kind=kind;
        this.writer=writer;
        this.usernum=usernum;
    }
}
