using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reports_CoachReport : System.Web.UI.Page
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

        if (!isAdmin)
        {
            Response.Redirect("Default.aspx");
        }
    }
}