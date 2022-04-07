using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
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
    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        User oUser = new User();
        DataTable dt = new DataTable();
        dt = oUser.CheckUser(txtUserName.Text, txtPass.Text);
        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0]["Name"].ToString() == "Admin")
            {
                string txt;
                txt = txtUserName.Text;
                Session["FirstName"] = txt;
                Session["label"] = "Admin";
                Response.Redirect("DefaultAdmin.aspx");
            }
            else
            if (dt.Rows[0]["Name"].ToString() == "User")
            {
                string txt;
                txt = txtUserName.Text;
                Session["FirstName"] = txt;
                Session["label"] = "DefaultUser";
                Response.Redirect("DefaultUser.aspx");
            }
            else           
                Response.Redirect("Default.aspx");
        }
        else
        {
            lblResult.Text = "نام کاربری یاکلمه عبور نادرست است";
        }
    }
}