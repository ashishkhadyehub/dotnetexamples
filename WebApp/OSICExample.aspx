<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="OSICExample.aspx.cs" Inherits="WebApp.OSICExample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-6">
    <h3>SelectedIndexChanged Example</h3>
    <label>Select City Code:</label>
    <asp:DropDownList runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged" CssClass="form-control" ID="ddlCity">
        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
        <asp:ListItem Text="KOP" Value="Kolhapur"></asp:ListItem>
        <asp:ListItem Text="PU" Value="Pune"></asp:ListItem>
        <asp:ListItem Text="DEL" Value="Delhi"></asp:ListItem>
    </asp:DropDownList>
    <hr />
    <label>City is :</label><br />
    <asp:Label runat="server" CssClass="badge badge-success" ID="lblCity"></asp:Label>
</div>
</asp:Content>
