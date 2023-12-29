<%@ Page Title="" Language="C#" MasterPageFile="~/RegisterLogin.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WebApp.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 30px">
    <div class="row">

        <div class="col-md-6">
            <h2>Login Now</h2>
            
            <div class="form-group">
                <label for="email">Email:</label>
                <asp:TextBox ID="txtEmail" TextMode="Email" placeholder="Email" CssClass="form-control" runat="server"></asp:TextBox>

            </div>
           
            <div class="form-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" TextMode="Password" placeholder="Password" CssClass="form-control" runat="server"></asp:TextBox>

            </div>
            
            <asp:Button runat="server" CssClass="btn btn-primary" OnClick="btnLogin_Click" ID="btnLogin" Text="Login" />
        </div>
    </div>
   

</div>
</asp:Content>
