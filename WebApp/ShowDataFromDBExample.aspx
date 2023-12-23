<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ShowDataFromDBExample.aspx.cs" Inherits="WebApp.ShowDataFromDBExample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container" style="margin-top: 30px">
        <div class="row">
            <div class="col-md-6">
                <h2>Register Now</h2>
                <div class="form-group">
                    <label for="txtName">Name:</label>
                    <asp:Label runat="server" ID="lblname" CssClass="badge badge-info"></asp:Label>
                    
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                     <asp:Label runat="server" ID="lblemail" CssClass="badge badge-info"></asp:Label>

                </div>
                <div class="form-group">
                    <label for="email">Contact:</label>
                     <asp:Label runat="server" ID="lblcontact" CssClass="badge badge-info"></asp:Label>

                </div>
                <div class="form-group">
                    <label for="email">City:</label>
                    <asp:Label runat="server" ID="lblcity" CssClass="badge badge-info"></asp:Label>

                </div>
               
            </div>
        </div>



    </div>
   
</asp:Content>
