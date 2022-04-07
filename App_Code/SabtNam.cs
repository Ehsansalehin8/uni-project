using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;


public class SabtNam
{
    public SabtNam()
    {

    }
    Base oBase = null;
    public DataTable SelecSabtNam()
    {
        oBase = new Base();
        string sql = "select * from tb_SabtNam";
        return oBase.Select(sql);
    }
    public string MaxId()
    {
        oBase = new Base();
        string sql = "select MAX(ID) from tb_SabtNam";
        return oBase.Counter(sql);
    }
    public string AddSabtNam(string username , string name , string HonarName, string phone , string description , int price)
    {
        oBase = new Base();
        string id = MaxId();
        string sql = "insert into tb_SabtNam values(N'" + id + "',N'" + username + "',N'" + name + "',N'" + HonarName + "',N'" + phone + "',N'" + description + "',N'" + price + "',N'" + true + "',N'" + DateTime.Now.ToShortDateString() + "')";
        return oBase.Command(sql);
    }
    public string UpdateSabtNam(int id)
    {
        oBase = new Base();
        string sql = "update  tb_SabtNam set Vaziat=N'" + true + "' where ID=N'" + id + "'";
        return oBase.Command(sql);
    }

    public DataTable Searchjadid()
    {
        oBase = new Base();
        string sql = "select * from tb_SabtNam where Vaziat=N'" + true + "'";
        return oBase.Select(sql);
    }


    public DataTable Searchusername(string username)
    {
        oBase = new Base();
        string sql = "select * from tb_SabtNam where Username=N'" + username + "'";
        return oBase.Select(sql);
    }

    public DataTable SearchDate(string date)
    {
        oBase = new Base();
        string sql = "select * from tb_SabtNam where Date like N'%" + date + "%'";
        return oBase.Select(sql);
    }
}