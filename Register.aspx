<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" MasterPageFile="~/ClassicMaster.master" ClientIDMode="Static" Inherits="Register" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>The KC Classic - Registration Options</title>
    <style>
        .btnDiv {
            padding: 15px 15px 15px 15px;
        }
        .iconPic {
            min-height: 310px;
            min-width: 222px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="formPageHeader">
        Registration Options
    </div>
    <form id="form1" runat="server">

        <div>
            <div class="col-md-4 col-sm-6 col-xs-12 btnDiv">
                <img src="images/athlete-blue.png" id="athlete" class="iconPic" />
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 btnDiv">
                <img src="images/coach-blue.png" id="coach" class="iconPic" />
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 btnDiv">
                <img src="images/demoteam-blue.png" id="demoteam" class="iconPic" />
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 btnDiv">
                <img src="images/athlete-mailin-blue.png" id="athlete-mailin" class="iconPic" />
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 btnDiv">
                <img src="images/coach-mailin-blue.png" id="coach-mailin" class="iconPic" />
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 btnDiv">
                <img src="images/demoteam-mailin-blue.png" id="demoteam-mailin" class="iconPic" />
            </div>
        </div>
    </form>
    <script>
        $(document).ready(function () {
            $('.iconPic').mouseover(function () {
                $(this).attr("src", $(this).attr("src").replace('blue', 'red'));
            });

            $('.iconPic').mouseleave(function () {
                $(this).attr("src", $(this).attr("src").replace('red', 'blue'));
            });
            $('#athlete').click(function () {
                window.location.href = '/Athlete.aspx';
                return false;
            });
            $('#coach').click(function () {
                window.location.href = '/Coach.aspx';
                return false;
            });
            $('#demoteam').click(function () {
                window.location.href = '/DemoTeam.aspx';
                return false;
            });
            $('#athlete-mailin').click(function () {
                window.open("/Athlete.pdf", '_blank');
                return false;
            });
            $('#coach-mailin').click(function () {
                window.open("/Coach.pdf", '_blank');
                return false;
            });
            $('#demoteam-mailin').click(function () {
                window.open("/Demo.pdf", '_blank');
                return false;
            });
        });

    </script>
</asp:Content>