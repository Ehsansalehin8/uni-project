using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["label"] == null || Session["label"].ToString() == "Guest")
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void btnReportComment_Click(object sender, EventArgs e)
    {
        PanelReportComment.Visible = true;
        PanelSabtnam.Visible = false;
        Comment oComment = new Comment();
        gvComment.DataSource = oComment.SelectComment();
        gvComment.DataBind();
    }

    protected void gvComment_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[0].Text = "کد پیام";
            e.Row.Cells[1].Text = "ایمیل";
            e.Row.Cells[2].Text = "متن پیام";
            e.Row.Cells[3].Text = "نوع کاربر";
        }
    }

    protected void gvComment_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvComment.PageIndex = e.NewPageIndex;
        Comment oComment = new Comment();
        gvComment.DataSource = oComment.SelectComment();
        gvComment.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SabtNam osabt = new SabtNam();
        DateTime Date = Convert.ToDateTime(txtsearc.Text);      
        gvSabtNamjadid.DataSource = osabt.SearchDate(Date.ToShortDateString());
        gvSabtNamjadid.DataBind();
    }

    protected void gvSabtNamjadid_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[0].Text = "کد کالا";
            e.Row.Cells[1].Text = "نام کاربر";
            e.Row.Cells[2].Text = "نام کالا";
            e.Row.Cells[3].Text = "آدرس";
            e.Row.Cells[4].Text = "تلفن";
            e.Row.Cells[5].Text = "توضیحات کالا";
            e.Row.Cells[6].Text = "قیمت";
            e.Row.Cells[7].Text = "وضعیت";
            e.Row.Cells[8].Text = "تاریخ";
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

    protected void gvSabtNamjadid_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvSabtNamjadid.PageIndex = e.NewPageIndex;
        SabtNam osabt = new SabtNam();
        gvSabtNamjadid.DataSource = osabt.Searchjadid();
        gvSabtNamjadid.DataBind();
    }

    protected void btnSabtNamReport_Click(object sender, EventArgs e)
    {
        PanelReportComment.Visible = false;
        PanelSabtnam.Visible = true;
        SabtNam osabt = new SabtNam();
        gvSabtNamjadid.DataSource = osabt.Searchjadid();
        gvSabtNamjadid.DataBind();
    }
}