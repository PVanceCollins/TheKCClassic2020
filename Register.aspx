<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" MasterPageFile="~/ClassicMaster.master" ClientIDMode="Static" Inherits="Register" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>The KC Classic - Registration Options</title>
    <style>
        .btnDiv {
            padding: 15px 15px 15px 15px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="formPageHeader">
        Registration Options
    </div>
    <form id="form1" runat="server">
        <div>
            <div class="col-md-12 btnDiv">
                <button class="btn btn-primary" id="btnAthlete">Athlete</button>
            </div>
            <div class="col-md-12 btnDiv">
                <button class="btn btn-primary" id="btnCoach">Coach</button>
            </div>
            <div class="col-md-12 btnDiv">
                <button class="btn btn-primary" id="btnDemo">Demo Team</button>
            </div>
        </div>
    </form>
    <script>
        $(document).ready(function () {

            $('#btnAthlete').click(function () {
                window.location.href = '/Athlete.aspx';
                return false;
            });
            $('#btnCoach').click(function () {
                window.location.href = '/Coach.aspx';
                return false;
            });
            $('#btnDemo').click(function () {
                window.location.href = '/DemoTeam.aspx';
                return false;
            });
        });

    </script>
</asp:Content>