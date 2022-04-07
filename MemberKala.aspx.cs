using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberKala : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["label"] == null || Session["label"].ToString() == "Guest")
        {
            Response.Redirect("Login.aspx");
        }
        if (Session["FirstName"] != null)
        {
            SabtNam osabt = new SabtNam();
            gvKala.DataSource = osabt.Searchusername(Session["FirstName"].ToString());
            gvKala.DataBind();
        }

    }

    protected void gvKala_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[0].Text = "کد کالا";
            e.Row.Cells[1].Text = "نام کاربر";
            e.Row.Cells[2].Text = "نام کالا";
            e.Row.Cells[3].Text = "نام و نام خانوادگی";
            e.Row.Cells[4].Text = "تلفن";
            e.Row.Cells[5].Text = "توضیحات";
            e.Row.Cells[6].Text = "قیمت";
            e.Row.Cells[7].Text = "وضعیت";
            e.Row.Cells[8].Text = "تاریخ خرید";
        }
    }

    protected void gvKala_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvKala.PageIndex = e.NewPageIndex;
        SabtNam osabt = new SabtNam();
        gvKala.DataSource = osabt.Searchusername(Session["FirstName"].ToString());
        gvKala.DataBind();
    }
}