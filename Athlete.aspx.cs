using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using DataCommunicator;

public partial class Athlete : System.Web.UI.Page
{
    DateTime dtApril4; 
    DateTime dtToday; 
    DateTime dob;
    private int eventID;


    private void setGlobals()
    {
        dtApril4 = DateTime.Parse("4/20/2020");// Day after early bird cutoff at 8 am
        dtToday = DateTime.Today;
        eventID = 11;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Redirect("OnlineRegistraionExpired.aspx"); // Comment out during normal registration


        if (!Page.IsPostBack)
        {
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
            if (Session["schoolName"] != null) {
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

    private int addContact()
    {
        try
        {
            int contID = 0;
            DataCommunicator.ContactItem contact = new ContactItem();
            contact.Address1 = txtAddress.Value;
            contact.Address2 = ""; // I might need this later
            contact.City = txtCity.Value;
            //contact.CoachLevel  Make sure I don't overwrite this unless it needs to be == Add these to different table
            //contact.RefLevel  Same for this one
            contact.Email = txtEmail.Value;
            contact.FName = txtFName.Value;
            contact.InstructorEmail = txtInstrEmail.Value;
            contact.IntructorName = txtInstrName.Value;
            contact.LName = txtLName.Value;
            contact.ContactID = "0";
            contact.OptOut = "false";
            contact.Rank = ddlRank.Value;
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
            DateTime db = new DateTime();
            if(!DateTime.TryParse(dateOfBirth.Value, out db))
            {
                throw new Exception("date of birth not completed");
            }

            contact.Dob = db;
            contID = contact.addContact();

            return contID;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    private int addCompetitor(int contID)
    {
        try
        {
            int competitorID = 0;
            DataCommunicator.Competitor comp = new DataCommunicator.Competitor();
            comp.Dob = dob;
            String g = "M";
            if (genderFemale.Checked) g = "F";
            comp.Gender = g;
            comp.Height = int.Parse(txtHeight.Value);
            comp.Weight = int.Parse(txtWeight.Value);
            comp.ContactID = contID;
            competitorID = comp.addCompetitor();

            return competitorID;
        }
        catch (Exception ex)
        {
            throw ex;
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

    private void addLine(int contactId, List<CartItem> items, int itemCount, int eventCategoryId)
    {

        int cost = getCost(itemCount);

        EventSignUp sup = new EventSignUp();
        sup.EventCategoryTypeID = eventCategoryId;
        sup.ContactID = contactId;
        sup.EventID = eventID; 

        int rez = sup.addEventSignUp();

        CartItem itm = new CartItem();
        itm.itemCost = cost;
        itm.EventSignUpID = rez;
        itm.StrSessionID = Session.SessionID;
        items.Add(itm);
    }

    private void processButton()
    {
        setGlobals();

        bool redirectError = false;
        String strSession = Session.SessionID;

        try
        {
            int contactID = addContact();
            int competitorID = addCompetitor(contactID);
            int cnt = 0;

            List<CartItem> itmArr = new List<CartItem>();

            // sparring
            if(sparringEvent.Value != "0")
            {
                cnt++;
                addLine(contactID, itmArr, cnt, int.Parse(sparringEvent.Value));
            }

            // open forms
            //if(openFormsEvent.Value != "0")
            //{
            //    cnt++;
            //    addLine(contactID, itmArr, cnt, int.Parse(openFormsEvent.Value));
            //}

            //traditional forms
            if (tradFormsEvent.Value != "0")
            {
                cnt++;
                addLine(contactID, itmArr, cnt, int.Parse(tradFormsEvent.Value));
            }

            //weapons
            if (weaponsEvent.Value != "0")
            {
                cnt++;
                addLine(contactID, itmArr, cnt, int.Parse(weaponsEvent.Value));
            }

            addShirt(contactID, itmArr);
            addTickets(contactID, itmArr);


            // Update Session variables
            Session.Add("cartItems", itmArr); // I probably will not use this

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
            } catch
            {
                // swallow these because we don't care if they fail
            }

            // Add items to shopping cart
            int rezCart = 0;
            foreach(CartItem i in itmArr)
            {
                rezCart = i.addCartItem();
            }

            try
            {
                // don't worry about it
                Response.Redirect(@"~/Cart2.aspx?s=" + Session.SessionID, false);
            }
            catch(ThreadAbortException taex)
            {
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
                ErrorLogger.LogError(ex.Message, sb.ToString(), "Athlete.processButton");
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


    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string selectedValue = ddlRank.Value;
        if (selectedValue == "none")
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }

    private int getCost(int cnt)  // these are the prices for the 2011 KC Classic. I should probably db enable this later
    {
        if (cnt > 2)
        {
            return 10; // $10 for each event after 1
        }
        else
        {
            if (cnt == 1)
            {
                if (dtToday < dtApril4) // see if they missed the early bird deadline
                {
                    return 69;
                }
                else
                {
                    return 79;
                }
            }
            else
            {
                return 0; // no charge for the second event;
            }
        }
    }

}
