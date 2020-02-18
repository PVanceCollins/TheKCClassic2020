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
using DataCommunicator;

public partial class TestItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Session.Add("price", 0);

            if (Session["MySessionID"] != null) // Sometimes if you reference a session key that does not exist it creates one with an empty string
            {
                if (Session["MySessionID"].ToString().Length < 5) // Session numbers are long
                {
                    Session.Add("MySessionID", Session.SessionID);
                }
            }
            else
            {
                if (Request.Cookies["MySessionID"] != null)
                {
                    // the cookie already exists
                    Session.Add("MySessionID", Request.Cookies["MySessionID"].Value);
                    Response.Cookies["MySessionID"].Expires = DateTime.Now.AddDays(1);
                }
                else
                {
                    Session.Add("MySessionID", Session.SessionID);
                    Response.Cookies["MySessionID"].Value = Session.SessionID;
                    Response.Cookies["MySessionID"].Expires = DateTime.Now.AddDays(1);
                }
            }


            Session["price"] = 1;
        }
    }

    private void processButton()
    {
        bool redirectError = false;

        try
        {
            int eventID = int.Parse(System.Configuration.ConfigurationManager.AppSettings["eventDatabaseID"]);


            eventID = 12; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!##################################  Warning, do not use this after 205  ################################!!!!!!!!!!!!!!!!!!!!!!!!


            String xcxcx = Session.SessionID;


            CartItem itm;
            EventSignUp sup;

            try
            {
                sup = new EventSignUp();
                sup.ContactID = 444;
                sup.EventID = eventID;
                sup.EventCategoryTypeID = 36;

                int rez = sup.addEventSignUp();

                itm = new CartItem();
                itm.itemCost = int.Parse(Session["price"].ToString());
                itm.EventSignUpID = rez;
                itm.StrSessionID = Session.SessionID;
                itm.addCartItem();

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                //clean up
                sup = null;
                itm = null;
            }

            try
            {
                Session.Add("MySessionID", Session.SessionID);
                Response.Cookies["MySessionID"].Value = Session.SessionID;
                Response.Cookies["MySessionID"].Expires = DateTime.Now.AddDays(1);
                Response.Redirect(@"~/Cart2.aspx?s=" + Session.SessionID, false);
            }
            catch (Exception ex)
            {
                // don't worry about it
                redirectError = true;
                String ewerwer = ex.Message;
            }
        }
        catch (Exception ex)
        {
            if (redirectError != true) //ignore this error
            {
                throw ex;
            }

        }
    }
    protected void btnTest_Click(object sender, EventArgs e)
    {
        if (txtKey.Text.ToLower() == "vance")
        {
            //Emailer.SendErrorEmail("added test item", "this is the stack trace", "TestItem.click");
            processButton();
        }
    }
}
