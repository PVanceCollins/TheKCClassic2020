using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;

/// <summary>
/// Summary description for Emailer
/// </summary>
public class Emailer
{
    public Emailer()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static void SendErrorEmail(string errorMessage, string stackTrace, string location)
    {
        try
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("Error Message: " + errorMessage +"    \r\n");
            sb.AppendLine("Stack Trace: " + stackTrace + "    \r\n");
            sb.AppendLine("Location: " + location + "    \r\n");
            sb.AppendLine("Time: " + DateTime.Now.AddHours(2).ToString() + "    \r\n");
            MailMessage message = new MailMessage();
            //message.From = new MailAddress(mailTo.Value);  // in config

            message.To.Add(new MailAddress("webmaster@thekcclassic.com"));

            message.Subject = "Error: The Kansas City Classic";
            message.Body = sb.ToString();
            message.IsBodyHtml = false;

            SmtpClient client = new SmtpClient();
            client.Send(message);
        }
        catch (Exception ex)
        {
            var x = 0;
            //swallow the exception
        }
    }

    public static void SendConfirmationEmail(List<FinishedCartItem> cartItems, Decimal total, string approvalCode, string emailAddress)
    {
        try
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("<html xmlns='http://www.w3.org/1999/xhtml'>");
            sb.AppendLine();
            sb.AppendLine("<head>");
            sb.AppendLine("<style>");
            sb.AppendLine("span {");
            sb.AppendLine("font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif;");
            sb.AppendLine("}");
            sb.AppendLine("#receiptItems {");
            sb.AppendLine("font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif;");
            sb.AppendLine("border-collapse: collapse;");
            sb.AppendLine("}");
            sb.AppendLine("#receiptItems td {");
            sb.AppendLine("border: 1px solid #ddd;");
            sb.AppendLine("padding: 8px;");
            sb.AppendLine("}");
            sb.AppendLine("#receiptItems tr:nth-child(even){background-color: #f2f2f2;}");
            sb.AppendLine("#receiptItems tr:hover {background-color: #ddd;}");
            sb.AppendLine("#receiptItems th {");
            sb.AppendLine("padding-top: 12px;");
            sb.AppendLine("padding-bottom: 12px;");
            sb.AppendLine("padding-left: 12px;");
            sb.AppendLine("padding-right: 12px;");
            sb.AppendLine("text-align: left;");
            sb.AppendLine("background-color: #000080;");
            sb.AppendLine("color: white;");
            sb.AppendLine("}");
            sb.AppendLine("</style>");
            sb.AppendLine("</head>");
            sb.AppendLine("<body>");
            sb.AppendLine("<span>Enjoy the KC Classic. Visit <a href='http://thekcclassic.com'>http://thekcclassic.com</a> for details</span><br />");
            sb.AppendLine("<span></span><br />");
            sb.AppendLine("<span>CC Approval Code: " + approvalCode + "</span><br />");
            sb.AppendLine("<span>Date: " + DateTime.Now.AddHours(2).ToString() + "</span><br /><br />");
            sb.AppendLine("<table id='receiptItems'>");
            sb.AppendLine("<tr>");
            sb.AppendLine("<th>Description</th>");
            sb.AppendLine("<th>Amount</th>");
            sb.AppendLine("</tr>");
            foreach (var cartItm in cartItems)
            {
                sb.AppendLine("<tr>");
                sb.AppendLine("<td>" + cartItm.Description + "</td>");
                sb.AppendLine("<td>" + cartItm.ItemCost + "</td>");
                sb.AppendLine("</tr>");
            }
            sb.AppendLine("<tr>");
            sb.AppendLine("<td>TOTAL</td>");
            sb.AppendLine("<td>" + total.ToString() + "</td>");
            sb.AppendLine("</tr>");


            sb.AppendLine("</table>");
            sb.AppendLine("<body>");
            sb.AppendLine("<html>");

            MailMessage message = new MailMessage();
            //message.From = new MailAddress(mailTo.Value);  // in config

            message.To.Add(new MailAddress(emailAddress));

            message.Subject = "The Kansas City Classic - Receipt";
            message.Body = sb.ToString();
            message.IsBodyHtml = true;

            SmtpClient client = new SmtpClient();
            client.Send(message);
        }
        catch 
        {
            var x = 0;
            //swallow the exception
        }
    }
}