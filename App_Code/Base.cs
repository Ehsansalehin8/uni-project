using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


public class Base
{
    public Base()
    {
    }
    public string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\E\\Project\\Electronics\\elec\\ELECTRONICS.MDF;Integrated Security=True;Connect Timeout=30";
    public string Counter(string sql)
    {
        int val = 0;
        string RequestedID;
        SqlConnection con = new SqlConnection(strCon);
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        object obj = cmd.ExecuteScalar();
        if (obj == DBNull.Value)
            val = 1;
        else
        {
            val = Convert.ToInt32(obj);
            val += 1;
        }
        RequestedID = val.ToString();
        con.Close();
        return RequestedID;

    }
   
    public string Command(string sql)
    {
        string result;
        int v = 0;
        SqlConnection con = new SqlConnection(strCon);
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        v = cmd.ExecuteNonQuery();
        con.Close();
        if (v > 0)
            result = "عملیات موفقیت آمیز بود";
        else
            result = "ناموفق:دوباره سعی کنید";
        return result;
    }
    public DataTable Select(string sql)
    {
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(strCon);
        SqlDataAdapter ad = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            dt = ds.Tables[0];
        }
        return dt;
    }

}