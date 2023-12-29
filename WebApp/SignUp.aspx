<%@ Page Title="" Language="C#" MasterPageFile="~/RegisterLogin.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApp.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <div class="container" style="margin-top: 30px">
        <div class="row">

            <div class="col-md-6">
                <h2>Register Now</h2>
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
                <div class="form-group">
                    <label for="txtPassword">Password:</label>
                    <asp:TextBox ID="txtPassword" TextMode="Password" placeholder="Password" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
                <div class="form-group">
                    <label for="txtConfirm">Confirm Password:</label>
                    <asp:TextBox ID="txtConfirm" TextMode="Password" placeholder="Confirm Password" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
                <%--<div class="form-group">
                    <label for="txtAge">Age:</label>
                    <asp:TextBox ID="txtAge" TextMode="Number" placeholder="Age" CssClass="form-control" runat="server"></asp:TextBox>

                </div>--%>
                <asp:Button runat="server" CssClass="btn btn-primary" OnClick="btnSubmit_Click" ID="btnSubmit" Text="Register" />
            </div>
        </div>
        <div class="row" style="margin-top: 20px">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Please Enter Name"
                ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator><br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not Matches"
                ControlToValidate="txtPassword" ControlToCompare="txtConfirm" ForeColor="Red"></asp:CompareValidator><br />
            <%--<asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please enter age between 18-100"
        ControlToValidate="txtAge" MaximumValue="100" MinimumValue="18" Type="Integer"></asp:RangeValidator><br />--%>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
        ErrorMessage="Please Enter Valid email-id" ControlToValidate="txtEmail"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" OnServerValidate="UserCustomValidate"
        ControlToValidate="txtPassword" ForeColor="Red" ErrorMessage="Password should have atleast a capital, small and digit and should be greater than 5 and less than 26 letters" SetFocusOnError="True"></asp:CustomValidator>
             
    <br />
        </div>


    </div>
</asp:Content>
