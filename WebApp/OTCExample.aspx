<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="OTCExample.aspx.cs" Inherits="WebApp.OTCExample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h3>OnTextChanged Example</h3>
                <label>Enter Employee-Id:</label>
                <asp:TextBox runat="server" AutoPostBack="true" OnTextChanged="txtId_TextChanged" ID="txtId" CssClass="form-control"></asp:TextBox>
                <hr />
                <label>Hello, your designation is :</label><br />
                <asp:Label runat="server" CssClass="badge badge-success" ID="lbldesignation"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
