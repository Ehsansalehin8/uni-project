using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Kala oKala = new Kala();
        GvKala.DataSource = oKala.SelectKala();
        GvKala.DataBind();
    }


    protected void Kala_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GvKala.PageIndex = e.NewPageIndex;
        Kala oKala = new Kala();
        GvKala.DataSource = oKala.SelectKala();
        GvKala.DataBind();
    }

    protected void Kala_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[1].Text = "کد کالا";
            e.Row.Cells[2].Text = "نام کالا";
            e.Row.Cells[3].Text = "توضیحات";
            e.Row.Cells[4].Text = "قیمت";
        }
    }

    protected void Kala_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "SabtNam")
        {
            string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
            Session["Name"] = commandArgs[1];
            Session["Description"] = commandArgs[2];
            Session["Price"] = commandArgs[3];
            Response.Redirect("ViewKala.aspx");
        }
    }
}