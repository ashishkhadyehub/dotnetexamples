<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="IPExample.aspx.cs" Inherits="WebApp.IPExample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
         <div style="margin-top:50px">
         <h3>IsPostBack Example</h3>
     <asp:Button runat="server" OnClick="btnrefresh_Click" CssClass="btn btn-info"  ID="btnrefresh" Text="Postback Request" />
         <br />
         <asp:DropDownList runat="server" CssClass="form-control" style="margin-top:15px" ID="ddlcity">
             
         </asp:DropDownList>
     </div>
    </div>
   
</asp:Content>
