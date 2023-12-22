<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="GVExample.aspx.cs" Inherits="WebApp.GVExample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 50px">
        <div class="row">
            <h2 style="text-align: center">Gridview Example - Insert,Update,Delete</h2>
           
            <table class="table table-striped">
                <tr>
                    <td style="width: 150px">Name:<br />
                        <asp:TextBox ID="txtname" CssClass="form-control" runat="server" Width="140" />
                    </td>
                    <td style="width: 150px">Contact:<br />
                        <asp:TextBox ID="txtcontact" CssClass="form-control" runat="server" Width="140" />
                    </td>
                    <td style="width: 150px">Email:<br />
                        <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" Width="140" />
                    </td>
                    <td style="width: 150px">City:<br />
                        <asp:TextBox CssClass="form-control" ID="txtcity" runat="server" Width="140" />
                    </td>
                    <td>
                        <asp:Button OnClientClick="return valid()" CssClass="btn btn-primary" OnClick="btnAdd_Click" Style="margin-top: 20px" ID="btnAdd" runat="server" Text="Add" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="row">
            <asp:GridView AutoGenerateColumns="false" DataKeyNames="Srno" OnRowUpdating="gvUsers_RowUpdating" OnRowDeleting="gvUsers_RowDeleting" OnRowEditing="gvUsers_RowEditing" OnRowCancelingEdit="gvUsers_RowCancelingEdit" runat="server" CssClass="table table-striped" ID="gvUsers">
                <Columns>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txteName" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contact">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("Contact") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txteContact" runat="server" Text='<%# Eval("Contact") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txteEmail" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="City">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("City") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txteCity" runat="server" Text='<%# Eval("City") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"
                        ItemStyle-Width="150" />
                </Columns>
            </asp:GridView>

        </div>

         <script>
     function valid() {
         var name = document.getElementById('<%= this.txtname.ClientID %>').value;
      var email = document.getElementById('<%= this.txtemail.ClientID %>').value;
      var phone = document.getElementById('<%= this.txtcontact.ClientID %>').value;
      var city = document.getElementById('<%= this.txtcity.ClientID %>').value;
         mobilecon = /^\d{10}$/;
         emailcon = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;

         if (name == "" || email == "" || phone == "" || city == "") {
             swal("Please fill all details to proceed..!", "", "error");
             return false;
         }
         if (phone != '') {
             if (!phone.match(mobilecon)) {
                 swal("Please Enter Valid Contact Number", "", "warning");
                 return false;

             }
         }
         if (email != '') {
             if (!email.match(emailcon)) {
                 swal("Please Enter Valid Email-Id", "", "error");
                 return false;
             }
         }

         return true;
     }
         </script>
    </div>
</asp:Content>
