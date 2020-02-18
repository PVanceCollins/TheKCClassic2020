<%@ Page Language="C#" MasterPageFile="~/ClassicMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Home2" Title="The KC Classic - Kansas City TaeKwonDo Tournament - Home" %>
<%@ MasterType VirtualPath="~/ClassicMaster.master" %>  
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="FrontPageStyle.css" rel="stylesheet" type="text/css" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="jumbotron">
        <h3>The 35th Annual</h3>
        <h1>Kansas City Classic</h1>
        <p class="lead">April 25 - Lees Summit, MO</p>

    </div>
    <div class="row">
        <div class="col-md-12">
            <img src="images/trophyheads.jpg" alt="trophyheads" class="img-responsive center-block" />
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <h2>Visit Kansas City</h2>
            <p>
                KC is a fun place to visit. This is a bunch of text talking about what a fun place KC is. We could go on forever talking about KC.
            </p>
            <p><a class="btn btn-default" id="entertainmentButton">Learn more &raquo;</a></p>
        </div>
        <div class="col-md-4">
            <h2>Your Hosts</h2>
            <p>Masters Oren and Terry Gautreax host The KC Classic with the assistance of great referees, coaches and athletes from all over the Midwest.</p>
            <p><a class="btn btn-default" id="hostsButton">Learn more &raquo;</a></p>
        </div>
        <div class="col-md-4">
            <h2>The ACTS Series</h2>
            <p>The goal of the ACTS Series is to provide an opportunity for athletes to hone their skills through elite competition and provide a training ground for Olympic hopefuls.</p>
            <p><a class="btn btn-default" id="actsButton">Learn more &raquo;</a></p>
        </div>
    </div>
       

    <script type="text/javascript">
        $(document).ready(function () {
            $('#hostsButton').click(function () {
                window.open('/Hosts.aspx','_blank');
                return false;
            });
            $('#entertainmentButton').click(function () {
                window.open('/Entertainment.aspx', '_blank');
                return false;
            });
            $('#actsButton').click(function () {
                window.open('/ACts.aspx', '_blank');
                return false;
            });
        });
    </script>
</asp:Content>

