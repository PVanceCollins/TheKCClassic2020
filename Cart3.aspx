<%@ Page Title="" Language="C#" MasterPageFile="~/ClassicMaster.master" AutoEventWireup="true" CodeFile="Cart3.aspx.cs" Inherits="Cart3" %>
<%--<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style>
        .itemDetailCell {
            padding: 1px 15px 1px 15px;
        }

        #grdCartItems th {
            color: #fcfcfc;
        }

        th {
           color:  #fcfcfc;
        }

        .itemHeader {
            color:  #fcfcfc;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<%--<telerik:RadScriptManager ID="RadScriptManager1" runat="server">
</telerik:RadScriptManager>--%>
    <br />
    <p style="font-weight:bold; font-size: large;">
        Please use your browser&#39;s print function to print this page as a receipt of 
        payment.
</p>
<p style="font-weight: bold;">PAID - Approval Code: <asp:Label ID="lblApprovalCode" runat="server" Text=""></asp:Label></p>
<br />

            <div class="table-responsive-sm col-xs-12">
    <asp:GridView ID="grdCartItems" runat="server" AutoGenerateColumns="False" ShowHeadersWhenNoRecords="true"  BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="cartID" 
                    DataSourceID="sdsDB" GridLines="Vertical" ShowFooter="True" 
                    OnRowDataBound="grdCartItems_ItemDataBound" 
                    OnSelectedIndexChanged="grdCartItems_SelectedIndexChanged" 
                    OnItemCommand="grdCartItems_ItemCommand"  >
        <AlternatingRowStyle BackColor="#DCDCDC"  />
        <Columns>
            <asp:BoundField DataField="cartID" HeaderText="Cart ID" InsertVisible="False" ReadOnly="True" SortExpression="cartID" HeaderStyle-CssClass="itemDetailCell" ItemStyle-CssClass="itemDetailCell" Visible="false"/>
            <asp:BoundField DataField="Description" HeaderText="Description" ReadOnly="True" SortExpression="Description" HeaderStyle-CssClass="col-xs-8 itemDetailCell" ItemStyle-CssClass="col-xs-6 itemDetailCell itemHeader" />
            <asp:BoundField DataField="cost" HeaderText="Item Cost" SortExpression="cost" FooterText="TOTAL" FooterStyle-Font-Bold="true" HeaderStyle-CssClass="col-xs-2 itemDetailCell" ItemStyle-CssClass="col-xs-2 itemDetailCell" FooterStyle-CssClass="itemDetailCell" FooterStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" />
            <asp:TemplateField  HeaderText="Item Total" HeaderStyle-CssClass="col-xs-2 itemDetailCell" ItemStyle-CssClass="col-xs-2 itemDetailCell curr" FooterStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" FooterStyle-CssClass="itemDetailCell" >
                <ItemTemplate>
                    <asp:Label ID="lblCost" runat="server" 
                        Text='<%# Bind("cost", "{0:n}") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Label ID="lblTotal" runat="server" 
                        Text="0"></asp:Label>
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    </div>
        <div class="col-lg-12">
            <br /><br /><br />
        </div>
        
    <div class="col-lg-12">
        <asp:Button id="btnConfirmEmail" runat="server" onclick="btnConfirmEmail_Click" Text="Send Email Confirmation"></asp:Button>
    </div>
    
<%--    <telerik:RadGrid 
        ID="grdCartItems" 
        runat="server" 
        OnItemDataBound="grdCartItems_ItemDataBound" 
        OnSelectedIndexChanged="grdCartItems_SelectedIndexChanged" 
        OnItemCommand="grdCartItems_ItemCommand" 
        BorderColor="Black" 
        BorderWidth="1px" 
        AllowAutomaticDeletes="True" 
        GridLines="Horizontal" 
        DataSourceID="sdsDB" 
        Width="775px" 
        AutoGenerateColumns="False"  
        OnNeedDataSource="grdCartItems_NeedDataSource" 
        DataMember="DefaultView">
        <HeaderContextMenu>
        <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
        </HeaderContextMenu>

        <MasterTableView 
            DataSourceID="sdsDB" ShowFooter="True" DataMember="DefaultView" DataKeyNames="cartID" 
            GridLines="Horizontal" ShowHeadersWhenNoRecords="true">
<RowIndicatorColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>
            <Columns>
                <telerik:GridBoundColumn DataField="cartID" HeaderText="Item ID" 
                    UniqueName="cartID">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Description" HeaderText="Item Description" 
                    UniqueName="ItemDescription" EmptyDataText="No Records to Display">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn Aggregate="Sum" DataField="cost" HeaderText="Price" UniqueName="cost" 
                    FooterAggregateFormatString="$###,###.##" ColumnEditorID="cost" >
                </telerik:GridBoundColumn>
            </Columns>
        </MasterTableView>

        <FilterMenu>
            <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
        </FilterMenu>
    </telerik:RadGrid>--%>
    
    
    <asp:SqlDataSource ID="sdsDB" runat="server" 
        ConnectionString="<%$ ConnectionStrings:gforcetkdConnectionString1 %>" 
        SelectCommand="usp_ViewCartItems" SelectCommandType="StoredProcedure" >
        <SelectParameters>
            <asp:SessionParameter  Name="sessionID" 
                SessionField="AfterApprovalSessionID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</form>   
</asp:Content>
