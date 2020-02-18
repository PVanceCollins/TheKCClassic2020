<%@ Page Title="" Language="C#" MasterPageFile="~/ClassicMaster.master" AutoEventWireup="true" CodeFile="Cart2.aspx.cs" Inherits="Cart2"  ClientIDMode="Static" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.min.css" />
    <style>
        .jp-card-container {
            margin: 8px 8px 8px 8px;
        }
        .itemDetailCell {
            padding: 1px 15px 1px 15px;
        }

        #grdCartItems th {
            color: #fcfcfc;
        }

        /*.curr {
            text-align: right;
        }*/
    </style>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<%--<telerik:RadScriptManager ID="RadScriptManager1" runat="server">
</telerik:RadScriptManager>--%>
    <br />
<p style="font-weight:bold;">
    You may enroll multiple competitors/coaches with one session. If you complete a transaction and decide to enroll another, please close your <br />browser then open a new browser window.
</p>
    <br />
    <button type="button" class="btn btn-primary" id="registerOthers">Register Others</button>
<br /><br /><br />
    <div class="table-responsive-sm col-xs-12">
    <asp:GridView ID="grdCartItems" runat="server" AutoGenerateColumns="False" ShowHeadersWhenNoRecords="true"  BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="cartID" 
                    DataSourceID="sdsDB" GridLines="Vertical" ShowFooter="True" 
                    OnRowDataBound="grdCartItems_ItemDataBound" 
                    OnSelectedIndexChanged="grdCartItems_SelectedIndexChanged" 
                    OnItemCommand="grdCartItems_ItemCommand" 
                    OnItemDeleted="grdCartItems_ItemDeleted" OnRowDeleted="grdCartItems_ItemDeleted" >
        <AlternatingRowStyle BackColor="#DCDCDC"  />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" DeleteText="Remove"   HeaderStyle-CssClass="col-xs-2 itemDetailCell" ItemStyle-CssClass="col-xs-2 itemDetailCell" />
            <asp:BoundField DataField="cartID" HeaderText="Cart ID" InsertVisible="False" ReadOnly="True" SortExpression="cartID" HeaderStyle-CssClass="itemDetailCell" ItemStyle-CssClass="itemDetailCell" Visible="false"/>
            <asp:BoundField DataField="Description" HeaderText="Description" ReadOnly="True" SortExpression="Description" HeaderStyle-CssClass="col-xs-6 itemDetailCell" ItemStyle-CssClass="col-xs-6 itemDetailCell" />
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
    <br />
    

<%--
    <telerik:RadGrid 
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
        OnItemDeleted="grdCartItems_ItemDeleted" 
        OnNeedDataSource="grdCartItems_NeedDataSource" 
        DataMember="DefaultView" CssClass="table table-sm">
        <HeaderContextMenu>
        <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
        </HeaderContextMenu>

        <asp:GridView 
                DataSourceID="sdsDB" ShowFooter="True" DataMember="DefaultView" DataKeyNames="cartID" 
                GridLines="Horizontal" ShowHeadersWhenNoRecords="true" runat="server">
            <RowIndicatorColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </RowIndicatorColumn>
            <ExpandCollapseColumn>
            <HeaderStyle Width="20px"></HeaderStyle>
            </ExpandCollapseColumn>
            <Columns>
                <asp:BoundFieldText="Delete" UniqueName="column" CommandName="delete"  >
                </asp:BoundField>
                <asp:BoundField  DataField="cartID" HeaderText="Item ID" 
                    UniqueName="cartID">
                </asp:BoundField>
                <asp:BoundField DataField="Description" HeaderText="Item Description" 
                    UniqueName="ItemDescription" EmptyDataText="No Records to Display">
                </asp:BoundField>
                <asp:BoundField Aggregate="Sum" DataField="cost" HeaderText="Price" UniqueName="cost" 
                    FooterAggregateFormatString="$###,###.##" ColumnEditorID="cost" >
                </asp:BoundField>
            </Columns>
        </asp:GridView>

        <FilterMenu>
            <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
        </FilterMenu>
    </telerik:RadGrid>
       
    --%>
    
    <asp:SqlDataSource ID="sdsDB" runat="server" 
        ConnectionString="<%$ ConnectionStrings:gforcetkdConnectionString1 %>" 
        SelectCommand="usp_ViewCartItems" SelectCommandType="StoredProcedure" 
        DeleteCommand="usp_DeleteCartItem" DeleteCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter  Name="sessionID" 
                SessionField="MySessionID" Type="String" />
        </SelectParameters>
        <DeleteParameters>        
            <asp:Parameter Name="cartID" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>
        <br />
<hr />
        <br />
<h2>Payment Information</h2>

    <div  class="form-group col-md-12 col-sm-12">
        <label id="lblError"  style="color:red; font-weight:bold" runat="server">&nbsp;</label>
    </div>

    <div id="cardContainer" style="margin:8px 8px 8px 8px;">
    </div>
    <div id="paymentForm">
        <div class="form-group col-md-4 col-sm-12">
            <label for="ccNumber">Card Number</label>
            <input id="ccNumber" name="ccNumber" class="form-control" runat="server"/>
        </div>
        <div class="form-group col-md-8 col-sm-12">
            <label for="expiry">Expiration</label>
            <input id="expiry" name="expiry" class="form-control"  runat="server" data-date-format="mm/yyyy" />
        </div>
        <div class="form-group col-md-4 col-sm-12">
            <label for="cvc">CVC Code</label>
            <input id="cvc" name="cvc" class="form-control"  runat="server"/>
        </div>
        <div class="form-group  col-md-8 col-sm-12">
            <label for="ccName">Name on Card</label>
            <input id="ccName" name="ccName" class="form-control"  runat="server"/>
        </div>
    </div>
    <div class="form-group col-md-4 col-sm-12">
        <label for="txtAddress">Address</label>
        <input type="text" id="txtAddress" name="txtAddress" class="form-control valid1" runat="server"  />
    </div>
    <div class="form-group col-md-8 col-sm-12">
        <label for="txtCity">City</label>
        <input type="text" id="txtCity" name="txtCity" class="form-control valid1" runat="server"  />
    </div>
    <div class="form-group col-md-4 col-sm-12">
        <label for="ddlStates">State/Province</label>
        <select class="form-control valid1" id="ddlStates" runat="server"  >
            <option value="">Select State</option>
            <option value="AL">Alabama</option>
            <option value="AK">Alaska</option>
            <option value="AZ">Arizona</option>
            <option value="AR">Arkansas</option>
            <option value="CA">California</option>
            <option value="CO">Colorado</option>
            <option value="CT">Connecticut</option>
            <option value="DE">Delaware</option>
            <option value="DC">District Of Columbia</option>
            <option value="FL">Florida</option>
            <option value="GA">Georgia</option>
            <option value="HI">Hawaii</option>
            <option value="ID">Idaho</option>
            <option value="IL">Illinois</option>
            <option value="IN">Indiana</option>
            <option value="IA">Iowa</option>
            <option value="KS">Kansas</option>
            <option value="KY">Kentucky</option>
            <option value="LA">Louisiana</option>
            <option value="ME">Maine</option>
            <option value="MD">Maryland</option>
            <option value="MA">Massachusetts</option>
            <option value="MI">Michigan</option>
            <option value="MN">Minnesota</option>
            <option value="MS">Mississippi</option>
            <option value="MO">Missouri</option>
            <option value="MT">Montana</option>
            <option value="NE">Nebraska</option>
            <option value="NV">Nevada</option>
            <option value="NH">New Hampshire</option>
            <option value="NJ">New Jersey</option>
            <option value="NM">New Mexico</option>
            <option value="NY">New York</option>
            <option value="NC">North Carolina</option>
            <option value="ND">North Dakota</option>
            <option value="OH">Ohio</option>
            <option value="OK">Oklahoma</option>
            <option value="OR">Oregon</option>
            <option value="PA">Pennsylvania</option>
            <option value="RI">Rhode Island</option>
            <option value="SC">South Carolina</option>
            <option value="SD">South Dakota</option>
            <option value="TN">Tennessee</option>
            <option value="TX">Texas</option>
            <option value="UT">Utah</option>
            <option value="VT">Vermont</option>
            <option value="VA">Virginia</option>
            <option value="WA">Washington</option>
            <option value="WV">West Virginia</option>
            <option value="WI">Wisconsin</option>
            <option value="WY">Wyoming</option>
        </select>
    </div>
    <div class="form-group col-md-8 col-sm-12">
        <label for="postal">Zip/Postal Code</label>
        <input type="text" id="postal" name="postal" class="form-control valid1" runat="server" />
    </div>
    <div class="form-group col-md-8 col-sm-12">
        <label for="txtEmail">Email Address</label>
        <input type="text" id="txtEmail" name="txtEmail" class="form-control valid1" runat="server" />
    </div>
    <div class="form-group col-lg-12">
        <asp:Button id="paymentSubmit" runat="server" onclick="btnPurchase_Click" OnClientClick="validateForm()" Text="Submit Payment"></asp:Button>
    </div>
    <br />
  </form>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/card/2.4.0/card.min.js"></script>
     <script type="text/javascript">

         function validateForm() {
             $('#form1').valid();
         }

         $(document).ready(function () {

             $('#expiry').datepicker({
                 autoclose: true,
                 minViewMode: 1,
                 startDate: '-1d',
                 format: 'mm/yyyy'
             });


             var card = new Card({
                 form: '#paymentForm', // *required*    
                 container: '#cardContainer', // *required*  where the card will be shown

                 formSelectors: {
                     numberInput: 'input#ccNumber', // optional — default input[name="number"]
                     expiryInput: 'input#expiry', // optional — default input[name="expiry"]
                     cvcInput: 'input#cvc', // optional — default input[name="cvc"]
                     nameInput: 'input#ccName' // optional - defaults input[name="name"]
                 },

                 width: 200, // optional — default 350px
                 formatting: true, // optional - default true

                 // Strings for translation - optional
                 messages: {
                     validDate: 'valid\ndate', // optional - default 'valid\nthru'
                     monthYear: 'mm/yyyy', // optional - default 'month/year'
                 },

                 // Default placeholders for rendered fields - optional
                 placeholders: {
                     number: '•••• •••• •••• ••••',
                     name: 'Full Name',
                     expiry: '••/••',
                     cvc: '•••'
                 },

                 masks: {
                     cardNumber: '•' // optional - mask card number
                 },

                 // if true, will log helpful messages for setting up Card
                 debug: false // optional - default false
             });

             $('#ccNumber').on("focusout", function () {
                 $('#ccNumber').valid();
             });

             $('#cvc').on("focusout", function () {
                 $('#cvc').valid();
             });

             //$('#expiry').on("focusout", function () {
             //    $('#expiry').valid();
             //});

             $('#expiry').datepicker().on('changeDate', function (ev) {
                 $('#expiry').valid();
             });

             $('#ccName').on("focusout", function () {
                 $('#ccName').valid();
             });

             $('#txtAddress').on("focusout", function () {
                 $('#txtAddress').valid();
             });

             $('#txtCity').on("focusout", function () {
                 $('#txtCity').valid();
             });

             $('#ddlStates').on("focusout", function () {
                 $('#ddlStates').valid();
             });

             $('#postal').on("focusout", function () {
                 $('#postal').valid();
             });


             //jQuery.validator.addMethod("zipcode", function (value, element) {
             //    return this.optional(element) || /^\d{5}(?:-\d{4})?$/.test(value);
             //}, "Please provide a valid zipcode.");

             jQuery.validator.addMethod("mmyyyy", function (value, element) {
                 return this.optional(element) || /(0[1-9]|1[012])[\/.](0[1-9]|[12][0-9]|3[01])/.test(value);
             }, "Please enter month and date in MM/YYYY format.");


             $('#form1').validate({
                 rules: {
                     <%=ccNumber.UniqueID %>: {
                     required: true,
                     creditcard: true
                     },
                     <%=cvc.UniqueID %>: {
                         required: true,
                         minlength: 3,
                         digits: true
                     },
                    <%=ccName.UniqueID %>: {
                        required: true,
                        minlength: 3
                     },
                    <%=expiry.UniqueID %>: {
                        required: true,
                        mmyyyy: true
                    },
                    <%=txtAddress.UniqueID %>: {
                        required: true,
                        minlength: 5
                    },
                    <%=txtCity.UniqueID %>: {
                        required: true,
                        minlength: 2
                    },
                    <%=ddlStates.UniqueID %>: {
                        required: true
                    },
                    <%=postal.UniqueID %>: {
                        required: true,
                        zipcodeUS: true
                    },
                    <%=txtEmail.UniqueID %>: {
                        required: true,
                        email: true
                    },
                }
            });
         });

         $('#registerOthers').click(function () {
             window.location.href = '/Register.aspx';
             return false;
         });
         

    </script>

    <script type="text/javascript" src="https://cdn.ywxi.net/js/1.js" async></script>

</asp:Content>
