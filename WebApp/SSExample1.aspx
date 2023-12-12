<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="SSExample1.aspx.cs" Inherits="WebApp.SSExample1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 50px">
    <div class="col-md-6">
        <label>First Name :</label>
        <asp:TextBox runat="server" Style="margin-bottom: 15px" ID="txtName" CssClass="form-control"></asp:TextBox>
        <label>Last Name :</label>
        <asp:TextBox runat="server" Style="margin-bottom: 15px" ID="txtLastname" CssClass="form-control"></asp:TextBox>
        
    </div>
</div>
</asp:Content>
