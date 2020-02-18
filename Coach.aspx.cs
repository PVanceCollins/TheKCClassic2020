using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Web.UI;
using DataCommunicator;

public partial class Coach : System.Web.UI.Page
{

    DateTime dtApril4;
    DateTime dtToday;
    DateTime dob;
    private int eventID;


    private void setGlobals()
    {
        dtApril4 = DateTime.Parse("4/20/2020");// Day after early bird cutoff at 8 am
        dtToday = DateTime.Today;
        eventID = 12;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Redirect("OnlineRegistraionExpired.aspx"); // Comment out during normal registration

        Master.MetaDescription = "The KC Classic Coaches Registration Page";
        Master.MetaKeyword = "The KC Classic Coaches Registration Page, The 33nd Annual KC Classic TaeKwonDo Tournament, Tae Kwon Do, Tournament, The Classic, TaeKwonDo";

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

            // instructor
            if (Session["schoolName"] != null)
            {
                txtSchool.Value = Session["schoolName"].ToString();
            }

            if (Session["instructorName"] != null)
            {
                txtInstrName.Value = Session["instructorName"].ToString();
            }

            if (Session["instructorEmail"] != null)
            {
                txtInstrEmail.Value = Session["instructorEmail"].ToString();
            }

            if (Session["instructorPhone"] != null)
            {
                txtInstrWebsite.Value = Session["instructorPhone"].ToString();
            }

            // contact
            if (Session["address"] != null)
            {
                txtAddress.Value = Session["address"].ToString();
            }

            if (Session["city"] != null)
            {
                txtCity.Value = Session["city"].ToString();
            }

            if (Session["state"] != null)
            {
                ddlStates.Items.FindByValue(Session["state"].ToString()).Selected = true;
            }

            if (Session["postal"] != null)
            {
                postal.Value = Session["postal"].ToString();
            }

            if (Session["email"] != null)
            {
                txtEmail.Value = Session["email"].ToString();
            }

            if (Session["phone"] != null)
            {
                txtPhone.Value = Session["phone"].ToString();
            }
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Page.Validate();
        if (Page.IsValid == true) 
        {
            processButton();
        }
    }

    private void processButton()
    {
        setGlobals();
        bool redirectError = false;

        try
        {
            String xcxcx = Session.SessionID;

            int contactID = addContact();
            int coachID = addCoach(contactID);

            List<CartItem> itmArr = new List<CartItem>();

            CartItem itm;
            EventSignUp sup;

            try
            {
                sup = new EventSignUp();
                sup.ContactID = contactID;
                sup.EventID = eventID;
                sup.EventCategoryTypeID = 26;

                int rez = sup.addEventSignUp();

                itm = new CartItem();
                itm.itemCost = (dtToday > dtApril4) ? 25 : 20;
                itm.EventSignUpID = rez;
                itm.StrSessionID = Session.SessionID;
                itmArr.Add(itm);

                addShirt(contactID, itmArr);
                addTickets(contactID, itmArr);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                sup = null;
                itm = null;
            }

            try
            {
                // instructor
                Session.Add("schoolName", txtSchool.Value);
                Session.Add("instructorName", txtInstrName.Value);
                Session.Add("instructorEmail", txtInstrEmail.Value);
                Session.Add("instructorPhone", txtInstrWebsite.Value);

                //contact
                Session.Add("address", txtAddress.Value);
                Session.Add("city", txtCity.Value);
                Session.Add("state", ddlStates.Value);
                Session.Add("postal", postal.Value);
                Session.Add("email", txtEmail.Value);
                Session.Add("phone", txtPhone.Value);
            }
            catch
            {
                // swallow these because we don't care if they fail
            }

            // Add items to shopping cart
            int rezCart = 0;
            foreach (CartItem i in itmArr)
            {
                rezCart = i.addCartItem();
            }

            try
            {
                Response.Redirect(@"~/Cart2.aspx?s=" + Session.SessionID, false);
            }
            catch(ThreadAbortException taex)
            {
                // don't worry about it
                redirectError = true;
            }
        }
        catch (Exception ex)
        {
            if (redirectError != true) //don't ignore this error
            {
                StringBuilder sb = new StringBuilder();
                sb.AppendLine("Cookie[MySessionID].Value: " + Request.Cookies["MySessionID"].Value);
                sb.AppendLine("Session Values");
                for (int i = 0; i < Session.Contents.Count; i++)
                {
                    var key = Session.Keys[i];
                    var value = Session[i];
                    sb.AppendLine("Key: " + key + "  -  Value: " + value);
                }
                sb.AppendLine("Stack Trace: " + ex.StackTrace);
                ErrorLogger.LogError(ex.Message, sb.ToString(), "Coach.processButton");
                throw ex;
            }
        }
    }

    private void addShirt(int contactId, List<CartItem> itmArr)
    {
        //tshirt
        if (tshirt.Value != "0")
        {
            int catID = int.Parse(tshirt.Value);
            int cost = (catID == 32 || catID == 35) ? 18 : 15;
            addItemToList(contactId, itmArr, catID, cost);
        }
    }

    private void addTickets(int contactId, List<CartItem> itmArr)
    {
        int youthCount = int.Parse(ticketsYouth.Value); // should always have a value in the DDL  - 34
        int adultCount = int.Parse(ticketsAdult.Value); // 33

        for (int i = 0; i < youthCount; i++)
        {
            addItemToList(contactId, itmArr, 34, 8);
        }

        for (int i = 0; i < adultCount; i++)
        {
            addItemToList(contactId, itmArr, 33, 10);
        }
    }

    private void addItemToList(int contactId, List<CartItem> itmArr, int catId, int cost)
    {
        EventSignUp sup = new EventSignUp();
        sup.EventCategoryTypeID = catId;
        sup.ContactID = contactId;
        sup.EventID = eventID;
        int rez = sup.addEventSignUp();

        CartItem itm = new CartItem();
        itm.itemCost = cost;
        itm.EventSignUpID = rez;
        itm.StrSessionID = Session.SessionID;
        itmArr.Add(itm);
    }


    private int addContact()
    {
        try
        {
            int contID = 0;
            DataCommunicator.ContactItem contact = new ContactItem();
            contact.Address1 = txtAddress.Value;
            contact.City = txtCity.Value;
            contact.Email = txtEmail.Value;
            contact.FName = txtFName.Value;
            contact.InstructorEmail = txtInstrEmail.Value;
            contact.IntructorName = txtInstrName.Value;
            contact.LName = txtLName.Value;
            contact.ContactID = "0";
            contact.OptOut = "false";
            contact.Rank = "none";
            contact.School = txtSchool.Value;
            contact.SchoolWeb = txtInstrWebsite.Value;
            contact.State = ddlStates.Value;
            String zip = "";
            String zip4 = "";
            try
            {
                if (postal.Value.Length > 4)
                {
                    zip = postal.Value.Substring(0, 5);

                    if (postal.Value.Length > 8)
                    {
                        zip4 = postal.Value.Substring(5, 4);
                    }
                }
            }
            catch (Exception ex)
            {
                string x = ex.Message;
                throw ex;
            }

            contact.Zip = zip;
            contact.Zip4 = zip4;
            contID = contact.addContact();
 
            return contID;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    private int addCoach(int contID)
    {
        try
        {
            int coachID = 0;
            DataCommunicator.Coach coach = new DataCommunicator.Coach();

            coach.CertLevel = string.Empty;
            coach.ContactID = contID;
            coachID = coach.addCoach();

            return coachID;
        }
        catch (Exception ex)
        {
            throw ex;
        }

    }
}
