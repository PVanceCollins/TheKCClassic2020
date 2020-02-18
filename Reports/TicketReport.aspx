<%@ Page Title="" Language="C#" MasterPageFile="~/Reports/ReportsMasterPage.master" AutoEventWireup="true" CodeFile="TicketReport.aspx.cs" Inherits="Reports_TicketReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
        <asp:GridView ID="grdShirts" runat="server" AutoGenerateColumns="False" DataSourceID="sdsTix" 
            EnableModelValidation="True" BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:BoundField DataField="First Name" HeaderText="First Name" 
                    SortExpression="First Name" />
                <asp:BoundField DataField="Last Name" HeaderText="Last Name" 
                    SortExpression="Last Name" />
                <asp:BoundField DataField="Ticket Type" HeaderText="Ticket Type" 
                    SortExpression="Ticket Type" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" ReadOnly="True" 
                    SortExpression="Qty" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        </asp:GridView>
        <asp:SqlDataSource ID="sdsTix" runat="server" 
            ConnectionString="<%$ ConnectionStrings:gforcetkdConnectionString1 %>" 
            SelectCommand="usp_CurrentTicket" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </div>
</asp:Content>

