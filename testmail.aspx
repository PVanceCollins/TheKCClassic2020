<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testmail.aspx.cs" MasterPageFile="~/ClassicMaster.master" ClientIDMode="Static" Inherits="testmail" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>The KC Classic - Registration Options</title>
    <style>


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <label for="mailTo">To:</label>
        <input type="text" id="mailTo" name="mailTo" runat="server" /><br /><br />
        <label for="mailSubject">Subject:</label>
        <input type="text" id="mailSubject" name="mailSubject" runat="server" /><br /><br />
        <label for="mailBody">Body:</label>
        <textarea cols="40" rows="5" id="mailBody" name="mailBody" runat="server"></textarea><br /><br /><br /><br />

        <asp:Button ID="btnSubmit"  runat="server" Text="Submit Email" OnClick="sendMail" UseSubmitBehavior="False" CausesValidation="true" />
    </form>

</asp:Content>