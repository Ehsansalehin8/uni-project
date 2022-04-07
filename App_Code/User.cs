using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;


public class User
{
    public User()
    {

    }
    Base oBase = null;
    public DataTable SelectUser()
    {
        oBase = new Base();
        string sql = "select * from tb_User";
        return oBase.Select(sql);
    }
    public string MaxId()
    {
        oBase = new Base();
        string sql = "select MAX(ID) from tb_user";
        return oBase.Counter(sql);
    }
    public string MaxIdUserInRole()
    {
        oBase = new Base();
        string sql = "select MAX(ID) from tb_UserInRole";
        return oBase.Counter(sql);
    }
    public string InsertUser(string name, string email, string pass)
    {
        oBase = new Base();
        string id = MaxId();
        string sql = "insert into tb_User values(N'" + id + "',N'" + name + "',N'" + email + "',N'" + pass + "')";
        string idUserInRole = MaxIdUserInRole();
        string sqlAddRole = "insert into tb_UserInRole values(N'" + idUserInRole + "',N'" + id + "',N'3')";
        oBase.Command(sqlAddRole);
        return oBase.Command(sql);
    }

    public string InsertUserOstad(string name, string email, string pass)
    {
        oBase = new Base();
        string id = MaxId();
        string sql = "insert into tb_User values(N'" + id + "',N'" + name + "',N'" + email + "',N'" + pass + "')";
        string idUserInRole = MaxIdUserInRole();
        string sqlAddRole = "insert into tb_UserInRole values(N'" + idUserInRole + "',N'" + id + "',N'2')";
        oBase.Command(sqlAddRole);
        return oBase.Command(sql);
    }

    public string UpdateUser(string id, string name, string email, string pass)
    {
        oBase = new Base();
        string sql = "update  tb_User set Name=N'" + name + "',Email=N'" + email + "',Pass=N'" + pass + "' where ID=N'" + id + "'";
        return oBase.Command(sql);
    }
    public string DeleteUser(int id)
    {
        oBase = new Base();
        string sql = "delete from tb_User where ID=N'" + id + "'";
        string sqlremoveRole = "delete from tb_UserInRole where IdUser=N'" + id + "'";
        oBase.Command(sqlremoveRole);
        return oBase.Command(sql);
    }
    public DataTable CheckUser(string userName, string pass)
    {
        oBase = new Base();
        string sql = "SELECT tb_User.ID,tb_Role.Name FROM  tb_User INNER JOIN ";
        sql += "tb_UserInRole ON tb_User.ID = tb_UserInRole.IdUser INNER JOIN ";
        sql += "tb_Role ON tb_UserInRole.IdRole = tb_Role.ID ";
        sql += "where tb_User.Name=N'" + userName + "' and tb_User.Pass=N'" + pass + "' ";
        return oBase.Select(sql);
    }

    public DataTable SelectRole()
    {
        oBase = new Base();
        string sql = "SELECT tb_User.Name,tb_User.Email,tb_UserInRole.IdUser,tb_UserInRole.IdRole,tb_Role.Name AS Expr1 ";
        sql += "FROM tb_User INNER JOIN tb_UserInRole ON tb_User.ID = tb_UserInRole.IdUser INNER JOIN ";
        sql += "tb_Role ON tb_UserInRole.IdRole = tb_Role.ID ";
        return oBase.Select(sql);
    }
    public DataTable SelectNameRole()
    {
        oBase = new Base();
        string sql = "select * from tb_Role";
        return oBase.Select(sql);
    }
    public string InsertRoleToUser(string idUser, string idRole)
    {
        oBase = new Base();
        string sql = "update  tb_UserInRole set IdRole=N'" + idRole + "' where IdUser=N'" + idUser + "'";
        return oBase.Command(sql);
    }

    public string changepass(string Pass, string Name)
    {
        oBase = new Base();
        string sql = "update  tb_User set Pass=N'" + Pass + "' where Name=N'" + Name + "'";
        return oBase.Command(sql);
    }
}