using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Home2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.MetaDescription = "The KC Classic Home Page";
        Master.MetaKeyword = "The KC Classic Home Page, The 28th Annual KC Classic TaeKwonDo Tournament, " +
            "Tae Kwon Do, Tournament, The Classic, TaeKwonDo, Olympic, Gautreaux, KC, K.C., Kansas City, " +
            "Missouri, Kansas, Nebraska, Iowa, Oklahoma, Minnesota, Illinois, Arkansas, KS, MO, AR, IL, NE, MN";
    }
}
