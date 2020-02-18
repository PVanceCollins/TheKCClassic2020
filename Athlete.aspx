<%@ Page Language="C#" MasterPageFile="~/ClassicMaster.master" AutoEventWireup="true"
    CodeFile="Athlete.aspx.cs" Inherits="Athlete" Title="KC Classic - Athlete Registration" ClientIDMode="Static" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.min.css" />


    <style>
        .formLabel {
            text-align: left;
        }
        .formInput {
            text-align: left;
        }
        #dateOfBirth {
            border: none;
            width: 100%;
        }
        .date{
            max-width: 280px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formPageHeader">
        Athlete Registration
    </div>
    <div style="text-align: center;" class="col-md-12">
        <span style="font-size: large;">SAVE $$$ PRE-REGISTER by April 13th
            <br />
            ADVANCED SPECTATOR TICKETS &amp; VIP PICK UP
            <br />
            NEW CHAMPIONSHIP T-SHIRT DESIGN, ADVANCE PURCHASE ONLY</span>
        <br />
        <br />
        <span style="font-weight: bold;">Competitors must check in and all Black Belts must
            weigh-in either Friday night or Saturday morning. Thank you!</span>
    </div>

    <div class="col-12">
        <div class="col-md-4">
            One or Two Events if registered by April 13th.
        </div>
        <div class="col-md-1" style="padding-left: 10px;">
            $69
        </div>
        <div class="col-md-1">
            &nbsp;
        </div>
        <div class="col-md-5">
            (Registration at the door, Sparring Only)
        </div>
        <div class="col-md-1" style="padding-left: 10px;">
            $89
        </div>
        <div class="col-md-4">
            One or Two Events if registered after April 13th
        </div>
        <div class="col-md-1" style="padding-left: 10px;">
            $79
        </div>
        <div class="col-md-1">
            &nbsp;
        </div>
        <div class="col-md-5">
            Championship T-Shirt: Youth S - Adult XL (Pre-purchase only)
        </div>
        <div class="col-md-1" style="padding-left: 10px;">
            $15
        </div>
        <div class="col-md-4">
            Each Additional Event
        </div>
        <div class="col-md-1" style="padding-left: 10px;">
            $10
        </div>
        <div class="col-md-1">
            &nbsp;
        </div>
        <div class="col-md-5">
            Championship T-Shirt: 2XL - 3XL (Pre-purchase only)
        </div>
        <div class="col-md-1" style="padding-left: 10px;">
            $18
        </div>
    </div>



    <form runat="server" id="athleteForm" ClientIDMode="Static">

    <div id="athleteWizard" class="col-sm-12">
   	    <div class="navbar">
       	      <div class="navbar-inner">
           	    <div class="container">
               	    <ul>
                        <li><a href="#tab1" data-toggle="tab">Contact</a></li>
                        <li><a href="#tab2" data-toggle="tab">Group</a></li>
                        <li><a href="#tab3" data-toggle="tab">School</a></li>
                        <li><a href="#tab4" data-toggle="tab">Events</a></li>
                        <li><a href="#tab5" data-toggle="tab">Misc</a></li>
                        <li><a href="#tab6" data-toggle="tab">Submit</a></li>
                    </ul>
                </div>
            </div>
        </div>
    	    <div class="tab-content">
        	        <div class="tab-pane" id="tab1">
                        <div class="form-group  col-md-12 col-sm-12">
                            <label for="genderGroup">Gender</label>
                            <div id="genderGroup" name="genderGroup" class="form-control form-radio-group" runat="server">
                                <label for="male">Male</label>
                                <input type="radio" name="grpGender" id="genderMale" value="Male"  runat="server" />&nbsp;&nbsp;&nbsp;
                                <label for="female">Female</label>
                                <input type="radio" name="grpGender" id="genderFemale" value="Female"  runat="server" />
                                <label id="genderError"  style="color:red;">&nbsp</label>
                            </div>
                        </div> 
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
                            <select class="form-control valid1" id="ddlStates" name="ddlStates" runat="server">
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
                    </div>
        	        <div class="tab-pane" id="tab2">
                        <div class="form-group col-md-4 col-sm-12">
                            <label for="datePickerAthlete">Date of Birth</label>
                            <div class="date form-control" id="datePickerAthlete" data-date-format="mm/dd/yyyy" data-date-end-date="-3y" data-date-start-date="-85y">

                                    <span>
                                        <input type="text" class="valid2" id="dateOfBirth" name="dateOfBirth" runat="server" style="border: none; width: 100%;" /></span>
                                    <span class="add-on">
                                        <i class="glyphicon glyphicon-calendar"></i>
                                    </span>

                            </div>
                        </div>
                        <div class="form-group col-md-8 col-sm-12">
                            <label for="ddlRank">Rank/Level</label>
                            <select id="ddlRank" name="ddlRank" class="form-control valid2" runat="server">
                                <option value="" selected>Select Rank</option>
<%--                                <option value="tot">Junior/Tiger</option>--%>
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
                        </div>
                        <div class="form-group col-md-4 col-sm-12">
                            <label for="txtHeight">Height (in inches)</label>
                            <input type="text" id="txtHeight" name="txtHeight" class="form-control valid2"  runat="server" />
                        </div>
                        <div class="form-group col-md-8 col-sm-12">
                            <label for="txtWeight">Weight (lbs)</label>
                            <input type="text" id="txtWeight" name="txtWeight" class="form-control valid2" runat="server" />
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
                        <div class="form-group  col-md-4 col-sm-12">
                            <label for="sparringEvent">Sparring</label>
                            <select class="form-control" id="sparringEvent" runat="server">
                                <option value="0">not competing</option>
                                <option value="5">Black Belt 13 and Under</option>
                                <option value="6">Black Belt 14-17</option>
                                <option value="7">Black Belt 18-32</option>
                                <option value="8">Black Belt 33+</option>
                                <option value="4">Brown/Red</option>
                                <option value="3">Green/Blue/Purple</option>
                                <option value="2">White/Yellow/Gold/Orange</option>
                                <option value="1">6 and Under</option>
                            </select>
                        </div>
                        <div class="form-group col-md-8 col-sm-12">
                            <label for="tradFormsEvent">Traditional Forms</label>
                            <select class="form-control" id="tradFormsEvent" runat="server">
                                <option value="0">not competing</option>
                                <option value="20">2nd Dan or Higher</option>
                                <option value="19">1st Dan</option>
                                <option value="18">Brown/Red</option>
                                <option value="17">Green/Blue/Purple</option>
                                <option value="16">White/Yellow/Gold/Orange</option>
                                <option value="15">Age 6 and Under</option>
                            </select>
                        </div>
<%--                        <div class="form-group col-md-4 col-sm-12">
                            <label for="openFormsEvent">Open Forms</label>
                            <select class="form-control" id="openFormsEvent" runat="server">
                                <option value="0">not competing</option>
                                <option value="14">2nd Dan or Higher</option>
                                <option value="13">1st Dan</option>
                                <option value="12">Brown/Red</option>
                                <option value="11">Green/Blue/Purple</option>
                                <option value="10">White/Yellow/Gold/Orange</option>
                                <option value="9">Age 6 and Under</option>
                            </select>
                        </div>--%>
                        <div class="form-group  col-md-12 col-sm-12">
                            <label for="weaponsEvent">Weapons Forms</label>
                            <select class="form-control" id="weaponsEvent" aria-describedby="weaponsEventHelp" runat="server">
                                <option value="0">not competing</option>
                                <option value="48">Novice</option>
                                <option value="49">Intermediate</option>
                                <option value="50">Advanced</option>
                            </select>
                        </div>
                        <div class="form-group  col-md-12 col-sm-12">
                             <br /><br />
                            <span style="text-align: center; color:red;" id="eventSelectionError">&nbsp</span>
                        </div>
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
                    </div>
                    <div class="tab-pane" id="tab6">
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
    <asp:HiddenField ID="HiddenField1" runat="server" />
    </form>


    <script src="https://cdn.jsdelivr.net/gh/VinceG/twitter-bootstrap-wizard@1.4.2/jquery.bootstrap.wizard.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.min.js"></script>
    



        <script type="text/javascript">

            function validateForm() {
                //$('#athleteForm').valid();
            }

            $(document).ready(function () {




                $('#athleteWizard').bootstrapWizard({
                    'tabClass': 'nav nav-pills',
                    'onNext': validateTab,
                    'onTabClick': validateTab
                });

                function validateTab(tab, navigation, index, nextIndex) {
                    if (nextIndex <= index) {
                        return;
                    }
                    var commentForm = $("#athleteWizard")
                    var $valid = commentForm.valid();
                    if (!$valid) {
                        $validator.focusInvalid();
                        return false;
                    }

                    if (nextIndex > index + 1) {
                        for (var i = index + 1; i < nextIndex - index + 1; i++) {
                            $('#athleteWizard').bootstrapWizard('show', i);
                            $valid = commentForm.valid();
                            if (!$valid) {
                                $validator.focusInvalid();
                                return false;
                            }
                        }

                        return false;
                    }
                }













                $('#dateOfBirth').datepicker({
                    startView: 2
                });

                //$('#athleteWizard').bootstrapWizard({
                //    tabClass: 'nav nav-pills',
                //    onNext: function (tab, navigation, index) {
                //        return validateTab(tab, navigation, index);
                //    },
                //    onPrevious: function (tab, navigation, index) {
                //        return validateTab(tab, navigation, $('#athleteWizard').bootstrapWizard('currentIndex') + 1);
                //    },
                //    onTabClick: function (tab, navigation, index) {
                //        return validateTab(tab, navigation, index + 1);
                //        alert("onclick = " + (index + 1));
                //    },
                //    onTabShow: function (tab, navigation, index) {

                //        return validateTab(tab, navigation, index + 1);
                //        alert("onshow = " + (index + 1));
                //    }
                //});

                //function validateTab(tab, navigation, index) {
                //    var rez = true;
                //    $('#athleteForm').validate();
                //    if (index == 1) {
                //        var f = $('#genderMale').is(':checked') || $('#genderFemale').is(':checked')
                //        if (f) {
                //            $('#genderError').html("&nbsp");
                //        } else {
                //            $('#genderError').html("Please select Male or Female.");
                //        }
                //        var d = $('.valid1').valid();
                //        if (!(f && d)) rez = false;                    }
                //    else if (index == 2) {
                //        rez = $('.valid2').valid();
                //    }
                //    else if (index == 3) {
                //        rez = $('.valid3').valid();
                //    }
                //    else if (index == 4) {
                //        // make sure they selected at least one event
                //        if ($('#sparringEvent option:selected').text() == '0' &&
                //            $('#tradFormsEvent option:selected').text() == '0' &&
                //            $('#weaponsEvent option:selected').text() == '0') {
                //            rez = false;
                //            $('#eventSelectionError').html("Please select at least one event.");
                //        }
                //    } else if (index == 6)
                //    alert("index " + index + " - rez = " + rez);
                //    return rez;
                //}

                $('#dateOfBirth').datepicker().on('changeDate', function (ev) {
                    $('#dateOfBirth').valid();
                });

                $('#athleteForm').validate({
                    rules: {
                    <%=txtFName.UniqueID %>: {
                    required: true,
                    minlength: 2
                },
                    <%=txtLName.UniqueID %>: {
                        required: true,
                        minlength: 2
                    },
                    <%=txtAddress.UniqueID %>: {
                        required: true,
                        minlength: 2
                    },
                    <%=txtCity.UniqueID %>: {
                        required: true,
                        minlength: 3
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
                        minlength: 5
                    },
                    <%=ddlRank.UniqueID %>: {
                        required: true
                    },
                    <%=txtSchool.UniqueID %>: {
                        required: true,
                        minlength: 3
                    },
                    <%=txtInstrWebsite.UniqueID %>: { // actually phone number
                        phoneUS: true
                    },
                    <%=dateOfBirth.UniqueID %>: {
                        required: true,
                        minlength: 6
                    },
                    <%=txtHeight.UniqueID %>: {
                        required: true,
                        range: [30, 90]
                    },
                    <%=txtWeight.UniqueID %>: {
                        required: true,
                        range: [40, 400]
                    }
                }
            });

        });

    </script>



<%--    <script type="text/javascript">

        

        $(document).ready(function () {

            function validateForm() {
                $('#athleteForm').validate();
                validateTab(6);
            }

            $('#dateOfBirth').datepicker({
                startView: 2
            });

            $('#athleteWizard').bootstrapWizard({
                tabClass: 'nav nav-pills',
                onNext: function (tab, navigation, index) {
                    return validateTab(tab, navigation, index);
                },
                onPrevious: function (tab, navigation, index) {
                    return validateTab(tab, navigation, $('#athleteWizard').bootstrapWizard('currentIndex') + 1);
                },
                onTabClick: function (tab, navigation, index) {
                    alert("on tab click " + (index + 1));
                    return validateTab(tab, navigation, index + 1);
                },
                onTabShow: function(tab, navigation, index) {
                    
                    return validateTab(tab, navigation,index + 1);
                }
            });

            function validateTab(tab, navigation, index) {

                alert("Validate tab " + index);


                var rez = false;

                $('#athleteForm').validate();
                if (index == 1) {
                    var f = $('#genderMale').is(':checked') || $('#genderFemale').is(':checked')
                    if (f) {
                        $('#genderError').html("&nbsp");
                    } else {
                        $('#genderError').html("Please select Male or Female.");
                    }
                    var d = $('.valid1').valid();
                    if (!(f && d)) rez = false;
                }
                else if (index == 2) {
                    rez = $('.valid2').valid();
                }
                else if (index == 3) {
                    rez = $('.valid3').valid();
                }
                else if (index == 4) {
                    // make sure they selected at least one event
                    if ($('#sparringEvent option:selected').text() == '0' &&
                        $('#tradFormsEvent option:selected').text() == '0' &&
                        $('#weaponsEvent option:selected').text() == '0') {
                        rez = false;
                        $('#eventSelectionError').html("Please select at least one event.");
                    }
                } else if (index == 6) {
                    // why arent; these returning flase when the form is not valid? #########################################################
                    var v1 = $('.valid1').valid();
                    var v2 = $('.valid2').valid();
                    var v3 = $('.valid3').valid();
                    if (v1 === false) {
                        $('#athleteForm').bootstrapWizard('show', 0);
                        rez = false;
                    } else if (v2 === false) {
                        $('#athleteForm').bootstrapWizard('show', 1);
                        rez = false;
                    } else if ($('.valid3').valid() === false) {
                        $('#athleteForm').bootstrapWizard('show', 2);
                        rez = false;
                    } 
                }

                return rez;
            }

            $('#dateOfBirth').datepicker().on('changeDate', function (ev) {
                $('#dateOfBirth').valid();
            });

            $('#athleteForm').validate({
                rules: {
                    <%=txtFName.UniqueID %>: {
                        required: true,
                        minlength: 2
                    },
                    <%=txtLName.UniqueID %>: {
                        required: true,
                        minlength: 2
                    },
                    <%=txtAddress.UniqueID %>: {
                        required: true,
                        minlength: 2
                    },
                    <%=txtCity.UniqueID %>: {
                        required: true,
                        minlength: 3
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
                        minlength: 5
                    },
                    <%=ddlRank.UniqueID %>: { 
                        required: true
                    },
                    <%=txtSchool.UniqueID %>: {
                        required: true,
                        minlength: 3
                    },
                    <%=txtInstrWebsite.UniqueID %>: { // actually phone number
                        phoneUS: true
                    },
                    <%=dateOfBirth.UniqueID %>: {
                        required: true,
                        minlength: 6
                    },
                    <%=txtHeight.UniqueID %>: {
                        required: true,
                        range: [30, 90]
                    },
                    <%=txtWeight.UniqueID %>: {
                        required: true,
                        range: [40, 400]
                    }
                }
            });

        });

    </script>--%>

</asp:Content>

            
