using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["label"] != null)
        {
            if (Session["label"].ToString() == "Admin")
            {
                Response.Redirect("DefaultAdmin.aspx");
            }
            else
            if (Session["label"].ToString() == "Member")
            {
                Response.Redirect("DefaultMember.aspx");
            }
            else { }
        }
    }
    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        User oUser = new User();
        if (txtConfirmPass.Text != "" && txtUsername.Text != "" && txtEmail.Text != "" && txtConfirmPass.Text != "")
        {
            if (txtPass.Text == txtConfirmPass.Text)
            {
                lblResult.Text = oUser.InsertUser(txtUsername.Text, txtEmail.Text, txtPass.Text);
            }
            else
            {
                txtPass.BorderColor = System.Drawing.Color.Red;
                txtConfirmPass.BorderColor = System.Drawing.Color.Red;
            }
        }
        else
        {
            lblResult.Text = "لطفا تمامی فیلدها را پرنمایید";
        }
    }
}