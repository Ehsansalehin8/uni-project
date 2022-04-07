using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


public class Comment
{
    public Comment()
    {

    }
    Base oBase = null;
    public string MaxId()
    {
        oBase = new Base();
        string sql = "select MAX(ID) from tb_Comment";
        return oBase.Counter(sql);
    }
    public string AddComment(string email, string text,string typeUser)
    {
        oBase = new Base();
        string id = MaxId();
        string sql = "insert into tb_Comment values(N'" + id + "',N'" + email + "',N'" + text + "',N'"+typeUser+"')";
        return oBase.Command(sql);
    }
    public DataTable SelectComment()
    {
        oBase = new Base();
        string sql = "select * from tb_Comment";
        return oBase.Select(sql);
    }
}