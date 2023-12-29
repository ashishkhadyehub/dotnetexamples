<%@ Page Title="" Language="C#" MasterPageFile="~/RegisterLogin.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApp.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 30px">
    <div class="row">

        <div class="col-md-6">
            <h2>Update Profile</h2>
            <div class="form-group">
                <label for="txtName">Name:</label>
                <asp:TextBox runat="server" placeholder="Name" ID="txtName" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <asp:TextBox ID="txtEmail" TextMode="Email" placeholder="Email" CssClass="form-control" runat="server"></asp:TextBox>

            </div>
            <div class="form-group">
                <label for="email">Contact:</label>
                <asp:TextBox ID="txtContact" TextMode="Number" placeholder="Contact" CssClass="form-control" runat="server"></asp:TextBox>

            </div>
            <div class="form-group">
                <label for="email">Department:</label>
                <asp:DropDownList CssClass="form-control" runat="server" ID="ddlDept">
                    <asp:ListItem Text="--Select--" Value="Select"></asp:ListItem>
                    <asp:ListItem Text="IT" Value="IT"></asp:ListItem>
                    <asp:ListItem Text="HR" Value="HR"></asp:ListItem>
                    <asp:ListItem Text="Accounts" Value="Accounts"></asp:ListItem>
                </asp:DropDownList>

            </div>
            
            <%--<div class="form-group">
                <label for="txtAge">Age:</label>
                <asp:TextBox ID="txtAge" TextMode="Number" placeholder="Age" CssClass="form-control" runat="server"></asp:TextBox>

            </div>--%>
            <asp:Button runat="server" CssClass="btn btn-primary" OnClick="btnSubmit_Click"  ID="btnSubmit" Text="Update" />
            <asp:Button runat="server" CssClass="btn btn-primary" OnClick="btnLogout_Click"  ID="btnLogout" Text="Log-Out" />
        </div>
    </div>
   


</div>
</asp:Content>
