<%@ Page Language="C#" MasterPageFile="~/ClassicMaster.master" AutoEventWireup="true" CodeFile="TestItem.aspx.cs" Inherits="TestItem" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="key"></asp:Label><asp:TextBox ID="txtKey"
        runat="server"></asp:TextBox><br />
    <asp:Button ID="btnTest" runat="server" Text="Button" onclick="btnTest_Click" />  
    </form>
</asp:Content>

