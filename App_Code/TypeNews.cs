using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


public class TypeNews
{
	public TypeNews()
	{
		
	}

    public DataTable SelectType()
    {
        Base oBase = new Base();
        string sql = "select * from tb_Type";
        return oBase.Select(sql);
    }
}