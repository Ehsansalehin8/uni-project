using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["label"] == null || Session["label"].ToString() == "Guest")
        {
            Response.Redirect("Login.aspx");
        }
    }
    User oUser = null;
    public void VisitPanel()
    {
        PanelUpdateUser.Visible = false;
        PanelAddRole.Visible = false;
        PanelCreateRole.Visible = false;
        PanelAddUser.Visible = false;
        PanelEditUser.Visible = false;
        PanelDeleteUser.Visible = false;
        PanelAddRole.Visible = false;

    }
    public void BindGrid(GridView gv)
    {
        oUser = new User();
        gv.DataSource = oUser.SelectUser();
        gv.DataBind();
    }
    protected void btnPanelAddUser_Click(object sender, EventArgs e)
    {
        VisitPanel();
        PanelAddUser.Visible = true;
    }
    protected void btnPanelDeleteUser_Click(object sender, EventArgs e)
    {
        VisitPanel();
        PanelDeleteUser.Visible = true;
        BindGrid(gvUser);
    }
    protected void btnPanelEditUser_Click(object sender, EventArgs e)
    {
        VisitPanel();
        PanelEditUser.Visible = true;
         BindGrid(gvUser);    
    }
    protected void btnAddUser_Click(object sender, EventArgs e)
    {
        oUser = new User();
        lblResult.Text = oUser.InsertUser(txtName.Text,txtEmail.Text,txtPass.Text);
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        oUser = new User();
        string id =(string)Session["idgvUser"];
        lblResultUpdate.Text = oUser.UpdateUser(id,txtUpdateUsername.Text,txtEmail.Text,txtPass.Text);
        BindGrid(gvUser);
    }
    protected void gvUser_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        oUser = new User();
        if (e.CommandName == "remove")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            oUser.DeleteUser(Id);

            BindGrid(gvUser);
        }
        else if (e.CommandName == "change")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            PanelUpdateUser.Visible = true;
            Session["idgvUser"] = Id.ToString();
        }

    }
    protected void btnPanelAddRole_Click(object sender, EventArgs e)
    {
        VisitPanel();
        PanelAddRole.Visible = true;
        oUser = new User();
        gvAddRole.DataSource = oUser.SelectRole();
        gvAddRole.DataBind();
        gvAllUser.DataSource = oUser.SelectUser();
        gvAllUser.DataBind();
    }
    protected void gvAllUser_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        PanelCreateRole.Visible = true;
        oUser = new User();
        if (e.CommandName == "AddRole")
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            ddlRole.DataSource = oUser.SelectNameRole();
            ddlRole.DataTextField = "Name";
            ddlRole.DataValueField = "ID";
            ddlRole.DataBind();
            Session["IdUsergvRole"] = Id.ToString();
            lblId.Text = Id.ToString();
        }
    }
    protected void btnAddRole_Click(object sender, EventArgs e)
    {
        oUser = new User();
        string idUser = (string)Session["IdUsergvRole"];
        lblResultUpdate.Text = oUser.InsertRoleToUser(idUser, ddlRole.SelectedItem.Value);
    }


    protected void gvUser_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[1].Text = "کد کاربر";
            e.Row.Cells[2].Text = "نام کاربر";
            e.Row.Cells[3].Text = "ایمیل";
            e.Row.Cells[4].Text = "گذرواژه";
        }
    }

    protected void gvAddRole_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[0].Text = "نام کاربر";
            e.Row.Cells[1].Text = "ایمیل";
            e.Row.Cells[2].Text = "کد کاربر";
            e.Row.Cells[3].Text = "کد نقش";
            e.Row.Cells[4].Text = "نقش فعلی";
        }
    }

    protected void gvAllUser_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[1].Text = "کد کاربر";
            e.Row.Cells[2].Text = "نام کاربر";
            e.Row.Cells[3].Text = "ایمیل";
            e.Row.Cells[4].Text = "گذرواژه";
        }
    }

    protected void gvAddRole_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvAddRole.PageIndex = e.NewPageIndex;
        oUser = new User();
        gvAddRole.DataSource = oUser.SelectRole();
        gvAddRole.DataBind();
    }

    protected void gvAllUser_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvAllUser.PageIndex = e.NewPageIndex;
        oUser = new User();
        gvAllUser.DataSource = oUser.SelectUser();
        gvAllUser.DataBind();
    }

    protected void gvUser_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvUser.PageIndex = e.NewPageIndex;
        oUser = new User();
        gvUser.DataSource = oUser.SelectUser();
        gvUser.DataBind();
    }
}