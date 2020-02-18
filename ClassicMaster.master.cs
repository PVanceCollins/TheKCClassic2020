using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class ClassicMaster : System.Web.UI.MasterPage
{
    string metaDescription;
    public string MetaDescription
    {
        get
        {
            return Page.Header.Attributes["Description.Content"];
        }
        set
        {
            HtmlMeta Description = new HtmlMeta();
            Description.Name = "description";
            Description.Content = value;
            //Page.Header.Controls.Add(Description);
        }
    }

    string metaKeyword;
    public string MetaKeyword
    {
        get
        {
            return Page.Header.Attributes["Keywords.Content"];
        }
        set
        {
            HtmlMeta Keywords = new HtmlMeta();
            Keywords.Name = "keywords";
            Keywords.Content = value;
            //Page.Header.Controls.Add(Keywords);
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}
