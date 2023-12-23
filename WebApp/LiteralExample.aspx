<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="LiteralExample.aspx.cs" Inherits="WebApp.LiteralExample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        img {
            width: 100%;
            margin-bottom: 20px;
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css" />
    <link href="css/fluid-gallery.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container gallery-container" style="margin-top: 50px">
        <h3>ASP:LITERAL EXAMPLE</h3>
         <div class="tz-gallery" style="padding:0">
        <div class="row">
            <asp:Literal runat="server" ID="lphotos"></asp:Literal>
            <%--<div class='col-md-4'><a href=''><img src='' /></a></div>--%>
        </div>
             </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
            <script>
                baguetteBox.run('.tz-gallery');
            </script>
</asp:Content>
