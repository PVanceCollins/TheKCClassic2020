<%@ Page Language="C#" MasterPageFile="~/ClassicMaster.master" AutoEventWireup="true" CodeFile="DemoTeam.aspx.cs" Inherits="DemoTeam" ClientIDMode="Static"  %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="formPageHeader">
        Demo Team  Registration
    </div>
    <div style="text-align: center;" class="col-md-12">
        <br />
        <span style="font-size: medium;">Demo teams only need to register and pay one time. Please include <span style="font-weight: 700;">all</span> members of the team below. <br /><br />
            <br />
            Any team member wanting to participate in other events must register separately.</span>
        <br />
        <span style="font-weight: bold;">Competitors should check in either Friday night or Saturday morning. Thank you!</span>
        <br /><br />
    </div>
    

    <form runat="server" id="demoTeamForm" ClientIDMode="Static">

        <div id="athleteWizard" class="col-sm-12">
   	        <div class="navbar">
       	            <div class="navbar-inner">
           	        <div class="container">
               	        <ul>
                            <li><a href="#tab1" data-toggle="tab">Contact</a></li>
                            <li><a href="#tab2" data-toggle="tab">Team</a></li>
                            <li><a href="#tab3" data-toggle="tab">School</a></li>
                            <li><a href="#tab4" data-toggle="tab">Misc</a></li>
                            <li><a href="#tab5" data-toggle="tab">Submit</a></li>
                        </ul>
                    </div>
                </div>
            </div>

    	    <div class="tab-content">
                    <div class="tab-pane" id="tab1">
                        <div class="form-group col-md-4 col-sm-12">
                            <label for="txtFName">First Name</label>
                            <input type="text" id="txtFName" name="txtFName" class="form-control valid1"  ClientIDMode="Static" minlength="2"  runat="server" />
                        </div>
                        <div class="form-group col-md-8 col-sm-12">
                            <label for="txtLName">Last Name</label>
                            <input type="text" id="txtLName" name="txtLName" class="form-control valid1" ClientIDMode="Static"  runat="server"  />
                        </div>
                        <div class="form-group col-md-4 col-sm-12">
                            <label for="txtAddress">Address</label>
                            <input type="text" id="txtAddress" name="txtAddress" class="form-control valid1" runat="server" />
                        </div>
                        <div class="form-group col-md-8 col-sm-12">
                            <label for="txtCity">City</label>
                            <input type="text" id="txtCity" name="txtCity" class="form-control valid1" runat="server" />
                        </div>
                        <div class="form-group col-md-4 col-sm-12">
                            <label for="ddlStates">State/Province</label>
                            <select class="form-control valid1" id="ddlStates" runat="server">
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
                
                        <div class="form-group col-md-4 col-sm-12">
                            <label for="txtPhone col-md-6 col-sm-12">Phone #</label>
                            <input type="text" id="txtPhone" name="txtPhone" class="form-control valid1" runat="server" />
                        </div>
                        <div class="form-group col-md-8 col-sm-12">
                            <label for="txtEmail">Email Address</label>
                            <input type="text" id="txtEmail" name="txtEmail" class="form-control valid1" runat="server" />
                        </div>
                        <br />
                    </div>
        	        <div class="tab-pane" id="tab2">
                        <div class="form-group col-md-4 col-sm-12">
                            <label for="txtTeamName">Demo Team Name</label>
                            <input type="text" id="txtTeamName" name="txtTeamName" class="form-control valid2" runat="server" />
                        </div>
                        <div class="form-group col-md-8 col-sm-12">
                            <label for="txtMembers">Team Members (Separated by Commas)</label>
                            <textarea type="text" id="txtMembers" name="txtMembers"  rows="10" cols="50" class="form-control valid2" runat="server" />
                        </div>
                    </div>
                    <div class="tab-pane" id="tab3">
                        <div class="form-group col-md-4 col-sm-12">
                            <label for="txtSchool">School Name</label>
                            <input type="text" id="txtSchool" name="txtSchool" class="form-control valid3"  runat="server" />
                        </div>
                        <div class="form-group col-md-8 col-sm-12">
                            <label for="txtInstrName">Instructor Name</label>
                            <input type="text" id="txtInstrName" name="txtInstrName" class="form-control valid3"  runat="server" />
                        </div>
                        <div class="form-group col-md-4 col-sm-12">
                            <label for="txtInstrEmail">Instructor/School Email Address</label>
                            <input type="text" id="txtInstrEmail" name="txtInstrEmail" class="form-control valid3"  runat="server" />
                        </div>
                        <div class="form-group col-md-8 col-sm-12">
                            <%-- re-using this existing field--%>  
                            <label for="txtInstrWebsite">Instructor/School Phone</label>
                            <input type="text" id="txtInstrWebsite" name="txtInstrWebsite" class="form-control valid3"  runat="server" />
                        </div>				
                    </div>
                    <div class="tab-pane" id="tab4">
                        <div class="form-group col-md-6 col-sm-12">
                            <label for="ticketsAdult">Adult (13+) Spectator Tickets ($10 ea.)</label>
                            <select class="form-control" id="ticketsAdult" name="ticketsAdult" runat="server">
                                <option value="0" selected>none</option>
                                <option value="1">1</option>
                                <option value="3">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                            </select>
                            <br />
                            <label for="ticketsYouth">Youth (6-12) Spectator Tickets ($8 ea.)</label>
                            <select class="form-control" id="ticketsYouth" name="ticketsYouth" runat="server">
                                <option value="0" selected>none</option>
                                <option value="1">1</option>
                                <option value="3">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                            </select>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <img src="images/TicketSmallTrans.gif" alt="Tickets" />
                        </div>
                        <div class="col-sm-12"><hr /><br /></div>
                        <div class="form-group col-md-6 col-sm-12">
                            <label for="tshirt">Choose a Tournament T-Shirt</label>
                            <select class="form-control" id="tshirt" runat="server">
                                <option value="0">none</option>
                                <option value="28">Small - $15</option>
                                <option value="29">Medium - $15</option>
                                <option value="30">Large - $15</option>
                                <option value="31">X-Large - $15</option>
                                <option value="32">XX-Large - $18</option>
                                <option value="35">XXX-Large - $18</option>
                                <option value="37">Youth Small - $15</option>
                                <option value="38">Youth Medium - $15</option>
                                <option value="39">Youth Large - $15</option>
                            </select>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <img src="Photos/33rd-classic-red.png" alt="33 Classic T-shirt" style="width:85%" />
                        </div>
                    </div>
                    <div class="tab-pane" id="tab5">
                        <div class="formWaiver" style="padding: 10px 10px 10px 10px;">
                            <div class="formWaiverHeader">
                                Liability Waiver and Conduct Agreement
                            </div>
                            <div class="formWaiverText">
                                In consideration of your acceptance of my entry, I do hereby WAIVE and RELEASE,
                                for myself, my heirs, executors and administrators, any claim I may make against
                                the Kansas City Classic Taekwondo Championships, Gautreaux’s Martial Art Centers,
                                Inc, ACTS, Blue Springs South High School, Blue Springs R IV School District, the
                                City of Blue Springs, the sponsors, directors, volunteers and competitors for any
                                and all damages which may be sustained by me in connection with my association with
                                or entry in the above athletic meet, or which may arise out of traveling to, participating
                                in and returning from this athletic meet. I understand that Taekwondo is a body-contact
                                sport which involves a risk of injury. I understand all the contents of the rules
                                and general information published by the sponsors and I agree with them in their
                                entirety. I fully understand that any medical treatment I receive will be of the
                                “first Aid” type only. In addition, I consent that any pictures taken of me in connection
                                with this event can be used for publicity, etc. and I waive compensation in regard
                                hereto.
                                <br />
                                <br />
                                I agree to cooperate with all Kansas City Classic staff, officials and security
                                personnel at all times. <span style="font-weight: bold">I will leave the competition
                                    floor at the conclusion of my event(s).</span>
                                <br />
                                <br />
                            </div>
                        </div>

                        <div class="formAgreeLine">
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" CssClass="formAgreeLine" Text="I state that by submitting this form I agree to the considerations above:"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit Registration" OnClick="btnSubmit_Click"  OnClientClick="validateForm()"
                                UseSubmitBehavior="False" CausesValidation="true" />
                        </div>
                    </div>
            </div>
            <ul class="pager wizard">
                <li class="previous first" style="display:none;"><a href="#">First</a></li>
                <li class="previous"><a href="#">Previous</a></li>
                <li class="next last" style="display:none;"><a href="#">Last</a></li>
                <li class="next"><a href="#">Next</a></li>
            </ul> 
        </div>

        
        <br />
        <asp:HiddenField ID="txtSession" runat="server" />
        <br />

    </form>

   
    <script src="https://cdn.jsdelivr.net/gh/VinceG/twitter-bootstrap-wizard@1.4.2/jquery.bootstrap.wizard.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.min.js"></script>

    <script type="text/javascript">

        function validateForm() {
            $('#demoTeamForm').valid();
        }

        $(document).ready(function () {

            $('#athleteWizard').bootstrapWizard({
                tabClass: 'nav nav-pills',
                onNext: function (tab, navigation, index) {
                    return validateTab(tab, navigation, index);
                },
                onPrevious: function (tab, navigation, index) {
                    return validateTab(tab, navigation, $('#athleteWizard').bootstrapWizard('currentIndex') + 1);
                }
            });

            function validateTab(tab, navigation, index) {
                var rez = true;
                $('#demoTeamForm').validate();
                if (index == 1) {
                    rez = $('.valid1').valid();
                }
                else if (index == 2) {
                    rez = $('.valid2').valid();
                }
                else if (index == 3) {
                    rez = $('.valid3').valid();
                }

                return rez;
            }

            $('#demoTeamForm').validate({
                rules: {
                    <%=txtTeamName.UniqueID %>: {
                        required: true,
                        minlength: 2
                    },
                    <%=txtMembers.UniqueID %>: {
                        required: true,
                        minlength: 5
                    },
                    <%=txtInstrEmail.UniqueID %>: {
                        email: true
                    },
                    <%=txtInstrName.UniqueID %>: {
                        required: true,
                        minlength: 5
                    },
                    <%=txtSchool.UniqueID %>: {
                        required: true,
                        minlength: 3
                    },
                    <%=txtInstrWebsite.UniqueID %>: { // actually phone number
                        phoneUS: true
                    },
                    <%=txtFName.UniqueID %>: {
                        required: true,
                        minlength: 2
                    },
                    <%=txtLName.UniqueID %>: {
                          required: true,
                          minlength: 3
                      },
                    <%=txtAddress.UniqueID %>: {
                        required: true,
                        minlength: 4
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
                        email: true
                    },
                    <%=txtPhone.UniqueID %>: {
                        phoneUS: true
                    }
                }
            });

        });

    </script>

</asp:Content>

