using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["label"] == null || Session["label"].ToString() == "Guest")
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Comment oComment = new Comment();
        lblResult.Text = oComment.AddComment(txtEmail.Text, txtComment.Text, "Member");
    }
}