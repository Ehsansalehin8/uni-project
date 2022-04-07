using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["label"] == null || Session["label"].ToString() == "Guest")
        {
            Response.Redirect("Login.aspx");
        }
    }


    protected void btnSearchName_Click(object sender, EventArgs e)
    {
        Kala kala = new Kala ();
        gvSearch.DataSource = kala.SearchName(txtSearch.Text);
        gvSearch.DataBind();
    }

    protected void btnTermSearch_Click(object sender, EventArgs e)
    {
        Kala kala = new Kala();
        gvSearch.DataSource = kala.SearchPrice(Convert.ToInt32(txtSearch.Text) );
        gvSearch.DataBind();
    }

}