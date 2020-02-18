<%@ Page Title="" Language="C#" MasterPageFile="~/Reports/ReportsMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Reports_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="margin-left: 100px;">
    <table>
        <tr>
            <td>Username: </td>
            <td><asp:TextBox ID="txtUser" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Password: </td>
            <td><asp:TextBox ID="txtPass" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                onclick="btnSubmit_Click" /></td>
            <td><asp:Label ID="lblBad" runat="server" Text="Enter User Name and Password" 
                ForeColor="Red"></asp:Label></td>
        </tr>
    </table>
        
</div>
</asp:Content>

