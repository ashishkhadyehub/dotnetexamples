<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApp.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
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
    <label for="email">City:</label>
    <asp:DropDownList CssClass="form-control" runat="server" ID="ddlCity">
        <asp:ListItem Text="--Select--" Value="Select"></asp:ListItem>
        <asp:ListItem Text="Kolhapur" Value="KOP"></asp:ListItem>
        <asp:ListItem Text="Pune" Value="PUN"></asp:ListItem>
        <asp:ListItem Text="Mumbai" Value="MUM"></asp:ListItem>
    </asp:DropDownList>

</div>
<asp:Button runat="server" OnClientClick="return valid()"  CssClass="btn btn-primary" ID="btnSubmit" Text="Register" />
                </div>
            </div>
            
            

        </div>
    </form>
    <script>
        function valid() {
            var name = document.getElementById('<%= this.txtName.ClientID %>').value;
            var email = document.getElementById('<%= this.txtEmail.ClientID %>').value;
            var phone = document.getElementById('<%= this.txtContact.ClientID %>').value;
            var city = document.getElementById('<%= this.ddlCity.ClientID %>').value;
            mobilecon = /^\d{10}$/;
            emailcon = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;

            if (name == "" || email == "" || phone == "" || city == "Select") {
                swal("Please fill all details to proceed..!","","error");
                return false;
            }
            if (phone != '') {
                if (!phone.match(mobilecon)) {
                    swal("Please Enter Valid Contact Number","", "warning");
                    return false;

                }
            }
            if (email != '') {
                if (!email.match(emailcon)) {
                    swal("Please Enter Valid Email-Id","", "error");
                    return false;
                }
            }

            return true;
        }
    </script>
</body>
</html>
