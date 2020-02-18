using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Threading;
using System.Text;

public partial class Cart2 : System.Web.UI.Page
{
    protected String myItemID;
    protected String myReturnValue;
    protected Decimal runningTotal;
    protected String myInvoiceID;
    protected String myCustomValue;

    protected void Page_PreInit(object sender, EventArgs e)
    {
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            runningTotal = 0;
            Session.Add("amount", 1.0);
            if (Session["currentGridItem"] != null)
            {
                Session["currentGridItem"] = -1;
            }
            else
            {
                Session.Add("currentGridItem", -1);
            }

            if (!Page.IsPostBack)
            {
                if (string.IsNullOrEmpty(Request.QueryString["s"]))
                {
                    if (Request.Cookies["MySessionID"] != null)
                    {
                        if (string.IsNullOrEmpty(Request.Cookies["MySessionID"].Value))
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

                            ErrorLogger.LogError("Cookie MySessionId exists, but is empty", sb.ToString(), "Cart2.PageLoad");
                            // no cookie or query string
                            Response.Redirect("~/Register.aspx");
                        }
                        else
                        {
                            Session.Add("MySessionID", Request.Cookies["MySessionID"].Value);
                            Response.Cookies["MySessionID"].Expires = DateTime.Now.AddDays(1);
                        }
                    }
                    else
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

                        ErrorLogger.LogError("Cookie MySessionId and Query string are both missing", sb.ToString(), "Cart2.PageLoad");

                        // no cookie or query string
                        Response.Redirect("default.aspx");
                    }
                }
                else
                {
                    Session.Add("MySessionID", Request.QueryString["s"].ToString());
                    if (Request.Cookies["MySessionID"] != null)
                    {
                        if (string.IsNullOrEmpty(Request.Cookies["MySessionID"].Value))
                        {
                            Response.Cookies["MySessionID"].Value = Request.QueryString["s"].ToString();
                            Response.Cookies["MySessionID"].Expires = DateTime.Now.AddDays(1);
                        }
                        else
                        {
                            Response.Cookies["MySessionID"].Expires = DateTime.Now.AddDays(1);
                        }
                    }
                    else
                    {
                        Response.Cookies["MySessionID"].Value = Request.QueryString["s"].ToString();
                        Response.Cookies["MySessionID"].Expires = DateTime.Now.AddDays(1);
                    }
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

                //if (Session["email"] != null)
                //{
                //    txtEmail.Value = Session["email"].ToString();
                //}

                //if (Session["phone"] != null)
                //{
                //    txtPhone.Value = Session["phone"].ToString();
                //}


                if (Session["AfterApprovalSessionID"] != null)
                {
                    Session.Remove("AfterApprovalSessionID");
                }
            }

            grdCartItems.DataBind();
            Session.Add("Payment_Amount", runningTotal);
        }
        catch(ThreadAbortException taex)
        {
        }
        catch (Exception ex)
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
            ErrorLogger.LogError(ex.Message, sb.ToString(), "Cart2.PageLoad");
        }
    }



    protected void grdCartItems_ItemDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string lineVal = ((Label)e.Row.FindControl("lblCost")).Text;
                Decimal fieldValue = Decimal.Parse(lineVal);
                runningTotal += fieldValue;
            }
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label lbl = (Label)e.Row.FindControl("lblTotal");
                lbl.Text = runningTotal.ToString("C");
                Session["amount"] = runningTotal;
            }
            //myItemID = "<input type=\"hidden\" ID=\"amount\" name=\"" + "amount" + "\" value=\"" + 1 + "\" />";
            myItemID = "<input type=\"hidden\" ID=\"amount\" name=\"" + "amount" + "\" value=\"" + runningTotal + "\" />";
            Session.Add("Payment_Amount", runningTotal);
        }
        catch (Exception ex)
        {
            ErrorLogger.LogError(ex.Message, ex.StackTrace, "Cart2.grdCartItems_ItemDataBound");
        }
    }


    protected void grdCartItems_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            TableCell cell = grdCartItems.SelectedRow.Cells[1];

            if (cell != null)
            {
                var cartID = cell.Text;
                Session.Add("CurrentCartItem", cartID);
            }
        }
        catch (Exception ex)
        {
            ErrorLogger.LogError(ex.Message, ex.StackTrace, "Cart2.grdCartItems_SelectedIndexChanged");
        }
        
    }


    protected void grdCartItems_ItemCommand(object source, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName.ToLower() == "delete")
            {
                grdCartItems.DataBind();
            }
        }
        catch (Exception ex)
        {
            ErrorLogger.LogError(ex.Message, ex.StackTrace, "Cart2.grdCartItems_ItemCommand");
        }
        
    }


    protected void grdCartItems_ItemDeleted(object source, GridViewDeletedEventArgs e)
    {
        runningTotal = 0;
    }

    protected void btnPurchase_Click(object sender, EventArgs e)
    {
        processCard();
    }

    protected void processCard()
    {
        try
        {

            if(ccNumber.Value.Replace(" ", "") == "4111111111111111")
            {
                // this is a test transaction
                TestTransaction();
                return;
            }

            SageWS.TRANSACTION_PROCESSINGSoapClient ws = new SageWS.TRANSACTION_PROCESSINGSoapClient();
            DataSet ds = new DataSet();
            string MinSec = DateTime.Now.ToString("mmss") + "-";

            System.ServiceModel.Description.ServiceEndpoint e = ws.Endpoint;

            String expiredate = expiry.Value.Substring(0, 2) + expiry.Value.Substring(expiry.Value.Length - 2);

            ds = ws.BANKCARD_SALE("526346311347", "T4W8I4U5T4O9", ccName.Value, txtAddress.Value, txtCity.Value, ddlStates.Value, postal.Value, "US", "nospam@nospam.com", ccNumber.Value,
                                    expiredate, cvc.Value, "2013KCClassic", runningTotal.ToString(), "0.00", "0.00", MinSec + Session["MySessionID"].ToString(), "9135551212", "9135551212",
                                    ccName.Value, txtAddress.Value, txtCity.Value, ddlStates.Value, postal.Value, "US");

            if (ds != null)
            {
                // do something with the dataset
                DataTable dt = ds.Tables[0];
                string sageResult = string.Empty;
                foreach (DataRow dr in dt.Rows)
                {
                    if (dr[0].ToString() == "A") // "A" = Approved 
                    {
                        sageResult = dr[7].ToString(); // success code
                        lblError.InnerText = "APPROVED. Code = " + sageResult + ".  -  Please print this page as a receipt.";
                        lblError.Visible = true;

                        Session.Add("ApprovalCode", sageResult);
                    }
                    else
                    {
                        lblError.InnerText = "The Credit Card processor was unable to complete you transaction for the following reason: " + dr[2].ToString();
                        lblError.Visible = true;
                        ErrorLogger.LogError("FailedCard", "The Credit Card processor was unable to complete you transaction for the following reason: " + dr[2].ToString(), "Cart2.processCard.CardDecline");
                    }
                }


                if (!string.IsNullOrEmpty(sageResult))
                {
                    // update the database
                    string q = "UPDATE Cart Set paidBy = @paidBy, paidOn = @paidOn, sessionID = @newSessionID WHERE sessionID = @sessionID AND paidBy IS NULL and paidOn IS NULL";
                    try
                    {
                        SqlParameter prmOn = new SqlParameter("@paidOn", DateTime.Now);
                        SqlParameter prmSession = new SqlParameter("@sessionID", Request.QueryString["s"]);
                        SqlParameter prmBy = new SqlParameter("@paidBy", sageResult);
                        SqlParameter prmNew = new SqlParameter("@newSessionID", MinSec + Request.QueryString["s"]);
                        ConnectionStringSettings dbConString = ConfigurationManager.ConnectionStrings["gforcetkdConnectionString1"];
                        using (SqlConnection con = new SqlConnection(dbConString.ConnectionString))
                        {
                            SqlCommand cmd = new SqlCommand(q, con);
                            cmd.Parameters.Add(prmBy);
                            cmd.Parameters.Add(prmOn);
                            cmd.Parameters.Add(prmNew);
                            cmd.Parameters.Add(prmSession);
                            con.Open();
                            int rezult = cmd.ExecuteNonQuery();
                            if (rezult < 1)
                            {
                                lblError.InnerText = "You're credit card was processed successfully, but there was an error updating our database. We apologize for any inconvenience. Please contact webmaster@thekcclassic.com to report the issue. Print this page and bring it with you to the tournament. Your error message is: Zero rows affected.";
                                lblError.Visible = true;
                                ErrorLogger.LogError("Card good, writing to DB failed for Session " + Request.QueryString["s"], "Sage Result: " + sageResult, "Cart2.processCard.WritingToDatabase");
                            }
                            con.Close();
                        }
                    }
                    catch (Exception ex)
                    {
                        lblError.InnerText = "You're credit card was processed successfully, but there was an error updating our database. We apologize for any inconvenience. Please contact webmaster@thekcclassic.com to report the issue. Print this page and bring it with you to the tournament. Your error message is: " + ex.Message;
                        lblError.Visible = true;

                        ErrorLogger.LogError(ex.Message, ex.StackTrace, "Cart2.processCard.WritingToDatabase");
                    }

                    Session.Add("AfterApprovalSessionID", MinSec + Session["MySessionID"].ToString());

                    Session.Remove("MySessionID");
                    Response.Cookies["MySessionID"].Expires = DateTime.Now.AddDays(-1);

                    int ccLen = ccNumber.Value.Length;
                    string newCC = ccNumber.Value.Substring(ccLen - 5, 4).PadLeft(ccLen, 'X');
                    ccNumber.Value = newCC;
                    cvc.Value = "XXX";

                    // I know we doing a bunch of stuff here that will never be seen, but its all getting rewritten next year so
                    try
                    {
                        Session.Add("emailCart", txtEmail.Value);
                        Response.Redirect("cart3.aspx"); // should remain https
                    }
                    catch
                    {
                        // do nothing with redirect exception
                    }
                }
            }
            else
            {
                lblError.InnerText = "We're sorry, but there was an error communicating with the Credit Card processor. Please try again later.";
                lblError.Visible = true;

                ErrorLogger.LogError("Error Processing Card", "We're sorry, but there was an error communicating with the Credit Card processor. Please try again later.", "Cart2.processCard.ifSageResultIsEmpty");
            }
        }
        catch (ThreadAbortException taex)
        {
            // ignoring known issue when using Response.Redirect
        }
        catch (Exception ex)
        {
            lblError.InnerText = "The Credit Card processor was unable to complete you transaction for the following reason. Please contact send as much information about your transaction as possible to webmaster@thekcclassic.com.";
            lblError.Visible = true;

            ErrorLogger.LogError(ex.Message, ex.StackTrace, "Cart2.processCard");
        }
    }

    private void TestTransaction()
    {
        string sageResult = "XXXXXXXXX";
        Session.Add("ApprovalCode", sageResult);
        string MinSec = DateTime.Now.ToString("mmss") + "-";


        if (!string.IsNullOrEmpty(sageResult))
        {
            // update the database
            string q = "UPDATE Cart Set paidBy = @paidBy, paidOn = @paidOn, sessionID = @newSessionID WHERE sessionID = @sessionID AND paidBy IS NULL and paidOn IS NULL";
            try
            {
                SqlParameter prmOn = new SqlParameter("@paidOn", DateTime.Now);
                SqlParameter prmSession = new SqlParameter("@sessionID", Request.QueryString["s"]);
                SqlParameter prmBy = new SqlParameter("@paidBy", sageResult);
                SqlParameter prmNew = new SqlParameter("@newSessionID", MinSec + Request.QueryString["s"]);
                ConnectionStringSettings dbConString = ConfigurationManager.ConnectionStrings["gforcetkdConnectionString1"];
                using (SqlConnection con = new SqlConnection(dbConString.ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand(q, con);
                    cmd.Parameters.Add(prmBy);
                    cmd.Parameters.Add(prmOn);
                    cmd.Parameters.Add(prmNew);
                    cmd.Parameters.Add(prmSession);
                    con.Open();
                    int rezult = cmd.ExecuteNonQuery();
                    if (rezult < 1)
                    {
                        lblError.InnerText = "You're credit card was processed successfully, but there was an error updating our database. We apologize for any inconvenience. Please contact webmaster@thekcclassic.com to report the issue. Print this page and bring it with you to the tournament. Your error message is: Zero rows affected.";
                        lblError.Visible = true;
                        ErrorLogger.LogError("Card good, writing to DB failed for Session " + Request.QueryString["s"], "Sage Result: " + sageResult, "Cart2.processCard.WritingToDatabase");
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                lblError.InnerText = "You're credit card was processed successfully, but there was an error updating our database. We apologize for any inconvenience. Please contact webmaster@thekcclassic.com to report the issue. Print this page and bring it with you to the tournament. Your error message is: " + ex.Message;
                lblError.Visible = true;

                ErrorLogger.LogError(ex.Message, ex.StackTrace, "Cart2.processCard.WritingToDatabase");
            }

            Session.Add("AfterApprovalSessionID", MinSec + Session["MySessionID"].ToString());

            Session.Remove("MySessionID");
            Response.Cookies["MySessionID"].Expires = DateTime.Now.AddDays(-1);

            int ccLen = ccNumber.Value.Length;
            string newCC = ccNumber.Value.Substring(ccLen - 5, 4).PadLeft(ccLen, 'X');
            ccNumber.Value = newCC;
            cvc.Value = "XXX";

            // I know we doing a bunch of stuff here that will never be seen, but its all getting rewritten next year so
            try
            {
                Session.Add("emailCart", txtEmail.Value);
                Response.Redirect("cart3.aspx"); // should remain https
            }
            catch
            {
                // do nothing with redirect exception
            }
        }

    }
}

//VISA

//4111111111111111

//4012000033330026

//4005519200000004

//4788250000028291

//4005550000000010

//4128123412341231 (Purchase Card, only use if your account is setup for PCL3)

//MASTERCARD

//5499740000000057

//5424180279791732

//5405980000008303

//5454545454545454

//5424180279791760

//5499740000000065 (Purchase Card, only use if your account is setup for PCL3)

//DISCOVER

//6011000993026909

//6011000993043615

//6011000991300009

//6011000995500000

//6011000993010970

//AMERICAN EXPRESS

//371449635392376

//373731623811006

//371449635398431

//3566002020140006

//373953244361001

//JCB

//3566002020140006

//DINERS

//36438999960016

//UNDETERMINED CARD TYPE

//9999999800002773