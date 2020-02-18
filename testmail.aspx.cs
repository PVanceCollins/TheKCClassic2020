using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class testmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void sendMail(object sender, EventArgs e)
    {
        string b = "" +
            "<html xmlns='http://www.w3.org/1999/xhtml'> " +
                "<head>" +
                "<style>" +
                "span {" +
                "font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif;" +
                "}" +
                "#receiptItems {" +
                "font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif;" +
                "border-collapse: collapse;" +
                "}" +
                "#receiptItems td {" +
                "border: 1px solid #ddd;" +
                "padding: 8px;" +
                "}" +
                "#receiptItems tr:nth-child(even){background-color: #f2f2f2;}" +
                "#receiptItems tr:hover {background-color: #ddd;}" +
                "#receiptItems th {" +
                "padding-top: 12px;" +
                "padding-bottom: 12px;" +
                "text-align: left;" +
                 "background-color: #4CAF50;" +
                "color: white;" +
                "}" +
                "</style>" +
                "</head>" +
                "<body>" +
                "<span>Thank you for purchasing from me</span><br />" +
                "<span>TY Line 1</span><br />" +
                "<span>TY Line 2</span><br />" +
                "<span>TY Line 3</span><br /><br />" +
                "<table id='receiptItems'>" +
                "<tr>" +
                "<th>col 1</th>" +
                "<th>col 2</th>" +
                "<th>col 3</th>" +
                "<th>col 4</th>" +
                "</tr>" +
                "<tr>" +
                "<td>Row 1 Col 1</td>" +
                "<td>Row 1 Col 2</td>" +
                "<td>Row 1 Col 3</td>" +
                "<td>Row 1 Col 4</td>" +
                "</tr>" +
                "<tr>" +
                "<td>Row 2 Col 1</td>" +
                "<td>Row 2 Col 2</td>" +
                "<td>Row 2 Col 3</td>" +
                "    <td>Row 2 Col 4</td>" +
                "</tr>" +
                "<tr>" +
                "<td colspan=2>&nbsp;</td>" +
                "<td>TOTAL</td>" +
                "<td>$100</td>" +
                "</tr>" +
                "" +
                "</table>" +
                "<body>" +
                "<html>";
        MailMessage message = new MailMessage();
        //message.From = new MailAddress(mailTo.Value);  // in config

        message.To.Add(new MailAddress(mailTo.Value));

        message.Subject = mailSubject.Value;
        message.Body = b;
        message.IsBodyHtml = true;

        SmtpClient client = new SmtpClient();
        client.Send(message);
    }
}