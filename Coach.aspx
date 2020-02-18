<%@ Page Language="C#" Title="The KC Classic TaeKwonDo Tournament - Coach Registration" MasterPageFile="~/ClassicMaster.master" AutoEventWireup="true" CodeFile="Coach.aspx.cs" Inherits="Coach"  ClientIDMode="Static" %>
<%@ MasterType VirtualPath="~/ClassicMaster.master" %>  

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="formPageHeader">
        Coach Registration
    </div>
    
    <div class="col-sm-12"><span>
        This form and fees must be submitted by April 20th, 2020. Pre-registration $20.00 by April 13th. $25.00 after April 13th and at the door. Instructors will receive 2 free coaching 
        passes for bringing 6-15 competitors, 3 free coaching passes for bringing 16-25 competitors. If you are bringing 25 or more competitors, please call us for special 
        arrangements. Explanation of the rules and scoring will be begin at 8:30am the day of competition. All Instructors, Referees, Officials and Coaches must attend this 
        meeting in order to understand judging procedures and become appraised of the rules. Credentials will be distributed during this meeting. 
        <br /><br />
        Please complete this form and submit with appropriate fee, no later than April 20th, 2020, for pre-registration. <span style="font-weight:bold">Only Coaches with badges will be allowed on the floor 
        and in the coaching chair.</span> Thank you!

        </span><br /><br /><br />
    </div>
        <form runat="server" id="coachForm" ClientIDMode="Static">
        <div id="coachWizard"  class="col-sm-12">
   	    <div class="navbar">
       	      <div class="navbar-inner">
           	        <div class="container">
               	    <ul>
                        <li><a href="#tab1" data-toggle="tab">Contact</a></li>
                        <li><a href="#tab3" data-toggle="tab">School</a></li>
                        <li><a href="#tab5" data-toggle="tab">Misc</a></li>
                        <li><a href="#tab6" data-toggle="tab">Submit</a></li>
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
<%--                        <div class="form-group col-md-12 col-sm-12">
                            <label for="ddlRank">Rank/Level</label>
                            <select id="ddlRank" name="ddlRank" class="form-control valid1" runat="server">
                                <option value="" selected>..Select Rank</option>
                                <option value="none">none</option>
                                <option value="white">White</option>
                                <option value="yellow">Yellow</option>
                                <option value="gold">Gold</option>
                                <option value="orange">Orange</option>
                                <option value="green">Green</option>
                                <option value="blue">Blue</option>
                                <option value="purple">Purple</option>
                                <option value="brown">Brown</option>
                                <option value="red">Red</option>
                                <option value="black">BB Recommended</option>
                                <option value="dan1">1st Dan</option>
                                <option value="dan2">2nd Dan or Higher</option>
                            </select>
                        </div>--%>
                        <br />
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
                        <br />
                    </div>
                    <div class="tab-pane" id="tab5">
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
                        <br />
                    </div>
                    <div class="tab-pane" id="tab6">
                        <div class="formWaiver" style="padding: 10px 10px 10px 10px;">
                            <div class="formWaiverHeader">
                                Liability Waiver and Conduct Agreement
                            </div>
                            <div class="formWaiverText col-sm-12">
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

                        <div class="formAgreeLine col-sm-12">
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" CssClass="formAgreeLine" Text="I state that by submitting this form I agree to the considerations above:"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnSubmit" OnClientClick="validateForm()" runat="server" Text="Submit Registration" OnClick="btnSubmit_Click"
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



    <br /><br />
    <asp:HiddenField ID="txtSession" runat="server" />


    </form>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap-wizard/1.2/jquery.bootstrap.wizard.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.min.js"></script>
    
    <script type="text/javascript">

        function validateForm() {
            $('#coachForm').valid();
        }

        $(document).ready(function () {
            $('#datePickerAthlete').datepicker({
                autoclose: true,
                startView: "decade"
            });
            //$('#datePickerAthlete').datepicker();
            $('#coachWizard').bootstrapWizard({
                tabClass: 'nav nav-pills',
                onNext: function (tab, navigation, index) {
                    return validateTab(tab, navigation, index);
                },
                onPrevious: function (tab, navigation, index) {
                    return validateTab(tab, navigation, $('#coachWizard').bootstrapWizard('currentIndex') + 1);
                }
            });

            function validateTab(tab, navigation, index) {
                var rez = true;
                $('#coachForm').validate();
                if (index == 1) {
                    rez = $('.valid1').valid();
                }
                else if (index == 2) {
                    rez = $('.valid3').valid();
                }
              
                return rez;
            }

            $('#coachForm').validate({
                rules: {
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
                    },
                    <%=txtInstrEmail.UniqueID %>: {
                        email: true
                    },
                    <%=txtInstrName.UniqueID %>: {
                        required: true,
                        minlength: 2
                    },

                    <%=txtSchool.UniqueID %>: {
                        required: true,
                        minlength: 2
                    },
                    <%=txtInstrWebsite.UniqueID %>: { // actually phone number
                        phoneUS: true
                    }
                }
            });

        });

    </script>

</asp:Content>

