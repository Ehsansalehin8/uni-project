using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewKala: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["label"] == null || Session["label"].ToString() == "Guest")
        {
            Response.Redirect("Login.aspx");
        }
        if (Session["Name"] != null && Session["Description"] != null && Session["Price"] != null)
        {
            TextBox1.Text = Session["Name"].ToString();
            TextBox4.Text = Session["Description"].ToString();
            TextBox5.Text = Session["Price"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SabtNam osabt = new SabtNam();
        osabt.AddSabtNam(Session["FirstName"].ToString(), TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, Convert.ToInt32(TextBox5.Text));
        Session["Name"] = null;
        Session["Description"] = null;
        Session["Price"] = null;
        TextBox1.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
}