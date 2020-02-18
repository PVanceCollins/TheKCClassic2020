using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reports_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bool isAdmin = false;
        if (Session["IsAdmin"] != null)
        {
            if (Session["IsAdmin"].ToString() == "true")
            {
                isAdmin = true;
            }
        }

        if (isAdmin)
        {
            lblBad.Text = "You are Logged In. Click a Link above to view a report";
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        bool success = false;
        if (txtUser.Text.ToLower() == "gforcekicks")
        {
            if (txtPass.Text == "92Olympics!")
            {
                Session.Add("IsAdmin", "true");
                success = true;
                // go to report page
            }
        }

        if (success)
        {
            lblBad.Text = "You are Logged In. Click a Link above to view a report";
        }
        else
        {
            lblBad.Text = "Try Again";
        }
    }
}