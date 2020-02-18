<%@ Page Title="" Language="C#" MasterPageFile="~/Reports/ReportsMasterPage.master" AutoEventWireup="true" CodeFile="CoachReport.aspx.cs" Inherits="Reports_CoachReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
        <asp:GridView ID="grdShirts" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="eventCategoryTypeID,contactID" DataSourceID="sdsCoach" 
            EnableModelValidation="True" BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:BoundField DataField="fName" HeaderText="First Name" 
                    SortExpression="fName" />
                <asp:BoundField DataField="lName" HeaderText="Last Name" 
                    SortExpression="lName" />
                <asp:BoundField DataField="school" HeaderText="School" 
                    SortExpression="school" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        </asp:GridView>
        <asp:SqlDataSource ID="sdsCoach" runat="server" 
            ConnectionString="<%$ ConnectionStrings:gforcetkdConnectionString1 %>" 
            SelectCommand="usp_CurrentCoach" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </div>
</asp:Content>

