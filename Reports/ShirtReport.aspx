<%@ Page Title="" Language="C#" MasterPageFile="~/Reports/ReportsMasterPage.master" AutoEventWireup="true" CodeFile="ShirtReport.aspx.cs" Inherits="Reports_ShirtReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="width: 50%; float: left;">
        <asp:GridView ID="grdShirts" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="eventCategoryTypeID,contactID" DataSourceID="sdsShirts" 
            EnableModelValidation="True" BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:BoundField DataField="fName" HeaderText="First Name" 
                    SortExpression="fName" />
                <asp:BoundField DataField="lName" HeaderText="Last Name" 
                    SortExpression="lName" />
                <asp:BoundField DataField="description" HeaderText="Shirt" 
                    SortExpression="description" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        </asp:GridView>
        <asp:SqlDataSource ID="sdsShirts" runat="server" 
            ConnectionString="<%$ ConnectionStrings:gforcetkdConnectionString1 %>" 
            SelectCommand="usp_CurrentTShirts" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </div>
    <div style="width: 50%; float: left;">
        <asp:GridView ID="grdSummary" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="4" DataSourceID="SqlDataSource1" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="description" HeaderText="Shirt" 
                    SortExpression="description" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" ReadOnly="True" 
                    SortExpression="Qty" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:gforcetkdConnectionString1 %>" 
            SelectCommand="usp_CurrentTShirtsSummary" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </div>
</asp:Content>

