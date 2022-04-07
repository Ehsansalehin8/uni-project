using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class KalaPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["label"] == null || Session["label"].ToString() == "Guest")
        //{
        //    Response.Redirect("Login.aspx");
        //}
    }

    Kala oKala = null;

    public void VisitPanel()
    {
        PanelAddKala.Visible = false;
        PanelDeleteEditKala.Visible = false;
        PanelUpdateKala.Visible = false;
    }

    public void BindGrid(GridView gv)
    {
        oKala = new Kala();
        gv.DataSource = oKala.SelectKala();
        gv.DataBind();
    }
    protected void gvKala_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        oKala = new Kala();
        if (e.CommandName == "Remove")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            oKala.DeleteKala(Id);
            BindGrid(gvKala);
        }
        else if (e.CommandName == "change")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            PanelUpdateKala.Visible = true;
            Session["idgvKala"] = Id.ToString();
        }
    }

    protected void btnPanelAddKala_Click(object sender, EventArgs e)
    {
        VisitPanel();
        PanelAddKala.Visible = true;
    }

    protected void btnPanelDeleteEditKala_Click(object sender, EventArgs e)
    {
        VisitPanel();
        PanelDeleteEditKala.Visible = true;
        oKala = new Kala();
        gvKala.DataSource = oKala.SelectKala();
        gvKala.DataBind();
    }

    protected void btnPanelUpdateKala_Click(object sender, EventArgs e)
    {
        VisitPanel();
        PanelUpdateKala.Visible = true;
    }

    protected void btnAddKala_Click(object sender, EventArgs e)
    {
        oKala = new Kala();
        lblAddResult.Text = oKala.AddKala(txtName.Text, txtDescriptionKala.Text, Convert.ToInt32(txtPrice.Text));

    }

    protected void btnUpdateKala_Click(object sender, EventArgs e)
    {
        oKala = new Kala();
        string id = (string)Session["idgvKala"];
        lblUpdateResult.Text = oKala.UpdateKala(id, txtUpdateName.Text, txtUpdateDescriptionKala.Text, Convert.ToInt32(txtUpdatePrice.Text));
        BindGrid(gvKala);
    }

    protected void gvKala_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[1].Text = "کد کالا";
            e.Row.Cells[2].Text = "نام کالا";
            e.Row.Cells[3].Text = "توضیحات";
            e.Row.Cells[4].Text = "قیمت";
        }
    }

    protected void gvKala_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvKala.PageIndex = e.NewPageIndex;
        oKala = new Kala();
        gvKala.DataSource = oKala.SelectKala();
        gvKala.DataBind();
    }
}