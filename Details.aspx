<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" MasterPageFile="~/ClassicMaster.master" ClientIDMode="Static" Inherits="Details" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>The KC Classic - Additional Forms and Documents</title>
    <style>
        .btnDiv {
            padding: 15px 15px 15px 15px;
        }
        .iconPic {
            min-height: 310px;
            min-width: 222px;
            /*padding: 15px 15px 15px 15px;*/
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
                <img src="images/flyer-blue.png" id="flyer" class="iconPic" />
           </div>
           <div class="col-md-4 col-sm-6 col-xs-12 btnDiv">
                <img src="images/schedule-blue.png" id="schedule" class="iconPic" />
           </div>
           <div class="col-md-4 col-sm-6 col-xs-12 btnDiv">
                <img src="images/divisions-blue.png" id="divisions" class="iconPic" />
           </div>
           <div class="col-md-4 col-sm-6 col-xs-12 btnDiv">
                <img src="images/rules-blue.png" id="rules" class="iconPic" />
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
            $('#flyer').click(function () {
                window.open("/Flyer.pdf", '_blank');
                return false;
            });
            $('#schedule').click(function () {
                window.open("/Schedule.pdf", '_blank');
                return false;
            });
            $('#divisions').click(function () {
                window.open("/Divisions.pdf", '_blank');
                return false;
            });
            $('#rules').click(function () {
                window.open("/Rules.pdf", '_blank');
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
            $('#coach-mailin').click(function () {
                window.open("/Coach.pdf", '_blank');
                return false;
            });
            $('#coach-mailin').click(function () {
                window.open("/Coach.pdf", '_blank');
                return false;
            });

        });

        function mOver(a) {

        }

    </script>
</asp:Content>
