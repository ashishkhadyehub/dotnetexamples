<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UploadMediaExample.aspx.cs" Inherits="WebApp.UploadMediaExample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:50px">
    <div class="form-group">
<asp:FileUpload runat="server" ID="fugallery" CssClass="form-control" Style="height:auto" AllowMultiple="true"/>
            </div>
<asp:Button runat="server" CssClass="btn btn-primary" OnClick="btnsubmit_Click" ID="btnsubmit"   BorderStyle="Double" Style="margin-top:20px" Text="Upload Photos" />
        </div>
</asp:Content>
