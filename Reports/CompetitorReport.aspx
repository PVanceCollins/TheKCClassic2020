<%@ Page Title="" Language="C#" MasterPageFile="~/Reports/ReportsMasterPage.master" AutoEventWireup="true" CodeFile="CompetitorReport.aspx.cs" Inherits="Reports_CoachReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <asp:GridView ID="grdComps" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="eventSignUpID,eventCategoryTypeID" DataSourceID="sdsComp" 
        EnableModelValidation="True" BackColor="White" BorderColor="#CC9966" 
        BorderStyle="Solid" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:BoundField DataField="fName" HeaderText="First Name" 
                SortExpression="fName" />
            <asp:BoundField DataField="lName" HeaderText="Last Name" 
                SortExpression="lName" />
            <asp:BoundField DataField="description" HeaderText="Event" 
                SortExpression="description" />
            <asp:BoundField DataField="gender" HeaderText="Gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="age" HeaderText="Age" ReadOnly="True" 
                SortExpression="age" />
            <asp:BoundField DataField="rank" HeaderText="Rank" SortExpression="rank" />
            <asp:BoundField DataField="weight" HeaderText="Weight" 
                SortExpression="weight" />
            <asp:BoundField DataField="height" HeaderText="Height" 
                SortExpression="height" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" 
                SortExpression="DOB" ReadOnly="True" />
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

    <asp:SqlDataSource ID="sdsComp" runat="server" 
        ConnectionString="<%$ ConnectionStrings:gforcetkdConnectionString1 %>" 
        SelectCommand="usp_CurrentCompetitorSignups" 
        SelectCommandType="StoredProcedure"></asp:SqlDataSource>

</div>
</asp:Content>

