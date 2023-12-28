<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="RepeaterExample.aspx.cs" Inherits="WebApp.RepeaterExample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2 style="text-align: center">ASP Repeater Example</h2>
        
            <asp:Repeater runat="server" ID="rgallery">
                <HeaderTemplate>
                    <h3 style="text-align: center">Current Photos</h3>
                </HeaderTemplate>
               
                <ItemTemplate>

                    <div class="col-md-4" style="">
                        <asp:Image runat="server" Style="width: 50%" ImageUrl='<%# Eval("ThumbPhoto") %>' />

                        <asp:Label runat="server" ID="photoid" Style="display: none" Text='<%# Eval("Srno") %>'></asp:Label>
                        <asp:LinkButton runat="server" ID="lbtndelete" OnClick="lbtndelete_Click" OnClientClick="return confirm('Do you want to delete this Photo?')" Style="background-color: orange; color: white; padding: 15px"><span class="fa fa-trash"></span> Delete</asp:LinkButton>

                    </div>

                </ItemTemplate>
                   
                <FooterTemplate>
                    <h3 style="text-align: center">Thank you...!</h3>
                </FooterTemplate>
            </asp:Repeater>
        </div>
   

</asp:Content>
