using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using Telerik.Web;
//using Telerik.Web.UI;
//using Telerik.Web.Design;

public partial class Cart3 : System.Web.UI.Page
{
    protected Decimal runningTotal;
    protected String myItemID;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ApprovalCode"] != null)
        {
            lblApprovalCode.Text = Session["ApprovalCode"].ToString();
        }

        if (Session["AfterApprovalSessionID"] == null)
        {
            Response.Redirect("default.aspx");
        }

        if (string.IsNullOrEmpty(Session["AfterApprovalSessionID"].ToString()))
        {
            Response.Redirect("default.aspx");
        }

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

        grdCartItems.DataBind();
        Session.Add("Payment_Amount", runningTotal);

    }

    //protected void grdCartItems_ItemDataBound(object sender, Telerik.Web.UI.GridItemEventArgs e)
    //{
    //    if (e.Item is GridDataItem)
    //    {
    //        GridDataItem dataItem = e.Item as GridDataItem;
    //        Decimal fieldValue = Decimal.Parse(dataItem["cost"].Text);
    //        runningTotal += fieldValue;
    //    }
    //    if (e.Item is GridFooterItem)
    //    {
    //        GridFooterItem footerItem = e.Item as GridFooterItem;
    //        footerItem["cost"].Text = "Total: " + String.Format("{0:C}", runningTotal);
    //        Session["amount"] = runningTotal;
    //    }
    //    //myItemID = "<input type=\"hidden\" ID=\"amount\" name=\"" + "amount" + "\" value=\"" + 1 + "\" />";
    //    myItemID = "<input type=\"hidden\" ID=\"amount\" name=\"" + "amount" + "\" value=\"" + runningTotal + "\" />";
    //    Session.Add("Payment_Amount", runningTotal);
    //}

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


    protected void btnConfirmEmail_Click(object sender, EventArgs e)
    {
        List<FinishedCartItem> cartItems = new List<FinishedCartItem>();
        decimal total = 0M;

        string conStr = System.Configuration.ConfigurationManager.ConnectionStrings["gforcetkdConnectionString1"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(conStr))
        {
            using (SqlCommand cmd = new SqlCommand("usp_ViewCartItems", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@sessionID", Session["AfterApprovalSessionID"].ToString()));

                conn.Open();
                using(SqlDataReader rdr = cmd.ExecuteReader())
                {
                    
                    while (rdr.Read())
                    {
                        var lineCost = rdr.GetDecimal(rdr.GetOrdinal("cost"));
                        total += lineCost;
                        cartItems.Add(new FinishedCartItem() { Description = rdr["Description"].ToString(), ItemCost = lineCost.ToString() });
                    }
                }
            }
        }

        if (Session["emailCart"] != null)
        {
            Emailer.SendConfirmationEmail(cartItems, total, Session["ApprovalCode"].ToString(), Session["emailCart"].ToString());
        }

        btnConfirmEmail.Text = "Sent";
    }




    //protected void grdCartItems_NeedDataSource(object source, GridNeedDataSourceEventArgs e)
    //{
    //    grdCartItems.DataBind();
    //}

    //protected void grdCartItems_ItemCommand(object source, GridCommandEventArgs e)
    //{
    //    //if (e.CommandName.ToLower() == "delete")
    //    //{

    //    //    grdCartItems.DataBind();
    //    //}
    //}


    //protected void grdCartItems_ItemDeleted(object source, GridDeletedEventArgs e)
    //{


    //    //var dataItem = grdCartItems.SelectedItems[0] as GridDataItem;
    //    //if (dataItem != null)
    //    //{
    //    //    String id = dataItem["CartID"].Text;
    //    //    Session["currentGridItem"] = int.Parse(id);
    //    //    //Session.Add("CurrentCartItem", cartID);
    //    //}
    //    ////String id = e.Item.GetDataKeyValue("cartID").ToString();

    //    //runningTotal = 0;


    //    //sdsDB.Delete();
    //    runningTotal = 0;
    //}
}