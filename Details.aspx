<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" MasterPageFile="~/ClassicMaster.master" ClientIDMode="Static" Inherits="Details" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>The KC Classic - Additional Forms and Documents</title>
    <style>
        .btnDiv {
            padding: 15px 15px 15px 15px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="formPageHeader">
        Additional Forms
    </div>
    <form id="form1" runat="server">
        <div>
            <div class="col-md-4 col-sm-6 col-xs-12 btnDiv">
                <button class="btn btn-primary" id="btnFlyer">Flyer</button>
            </div>
            <div class="col-md-8 col-sm-6 col-xs-12 btnDiv">
                <button class="btn btn-primary" id="btnSchedule">Schedule and Details</button>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 btnDiv">
                <button class="btn btn-primary" id="btnDivisions">Divisions</button>
            </div>
            <div class="col-md-8 col-sm-6 col-xs-12 btnDiv">
                <button class="btn btn-primary" id="btnRules">Rules</button>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 btnDiv">
                <button class="btn btn-primary" id="btnAthlete">Athlete Mail-in Form</button>
            </div>
            <div class="col-md-8 col-sm-6 col-xs-12 btnDiv">
                <button class="btn btn-primary" id="btnCoach">Coach Mail-in Form</button>
            </div>
<%--            <div class="col-md-4 col-sm-6 col-xs-12 btnDiv">
                <button class="btn btn-primary" id="btnFood">Food</button>
            </div>
            <div class="col-md-8 col-sm-6 col-xs-12 btnDiv">
                <button class="btn btn-primary" id="btnLodging">Lodging</button>
            </div>--%>
        </div>
    </form>
    <script>
        $(document).ready(function () {

            $('#btnFlyer').click(function () {
                window.open("/Flyer.pdf", '_blank');
                return false;
            });
            $('#btnSchedule').click(function () {
                window.open("/Schedule.pdf", '_blank');
                return false;
            });
            $('#btnDivisions').click(function () {
                window.open("/Divisions.pdf", '_blank');
                return false;
            });
            $('#btnRules').click(function () {
                window.open("/Rules.pdf", '_blank');
                return false;
            });
            $('#btnAthlete').click(function () {
                window.open("/Athlete.pdf", '_blank');
                return false;
            });
            $('#btnCoach').click(function () {
                window.open("/Coach.pdf", '_blank');
                return false;
            });
            $('#btnFood').click(function () {
                window.open("/Food.pdf", '_blank');
                return false;
            });
            $('#btnLodging').click(function () {
                window.open("/Lodging.pdf", '_blank');
                return false;
            });
        });

    </script>
</asp:Content>
