using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class Kala
{
    public Kala()
    {

    }
    Base oBase = null;
    public DataTable SelectKala()
    {
        oBase = new Base();
        string sql = "select * from tb_Kala";
        return oBase.Select(sql);
    }
    public string MaxId()
    {
        oBase = new Base();
        string sql = "select MAX(ID) from tb_Kala";
        return oBase.Counter(sql);
    }
    public string AddKala(string Name, string description, int price)
    {
        oBase = new Base();
        string id = MaxId();
        string sql = "insert into tb_Kala values(N'" + id + "',N'" + Name + "',N'" + description + "',N'" + price + "')";
        return oBase.Command(sql);
    }
    public string UpdateKala(string id, string Name, string description, int price)
    {
        oBase = new Base();
        string sql = "update  tb_Kala set Name=N'" + Name + "',Description=N'" + description + "',Price=N'" + price + "' where ID=N'" + id + "'";
        return oBase.Command(sql);
    }
    public string DeleteKala(int id)
    {
        oBase = new Base();
        string sql = "delete from tb_Kala where ID=N'" + id + "'";
        return oBase.Command(sql);
    }
    public DataTable SearchName(string search)
    {
        oBase = new Base();
        string sql = "select * from tb_Kala where Name like N'%" + search + "%'";
        return oBase.Select(sql);
    }

    public DataTable SearchPrice(int search)
    {
        oBase = new Base();
        string sql = "select * from tb_Kala where Price like N'%" + search + "%'";
        return oBase.Select(sql);
    }
}