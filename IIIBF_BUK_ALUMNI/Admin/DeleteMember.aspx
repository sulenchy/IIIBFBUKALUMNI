<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteMember.aspx.cs" Inherits="IIIBF_BUK_ALUMNI.Admin.DeleteMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <p class="text-danger">
        <asp:Literal ID="Literal2" runat="server"></asp:Literal>
    </p>
    <div class="form-horizontal">
        <asp:Literal ID="Literal1" runat="server" Text="The selected Member is about to be deleted. Please, confirm the operation"></asp:Literal>
        <asp:Button ID="Button1" runat="server" Text="Delete" CssClass="btn btn-primary" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="btn btn-primary" OnClick="Button2_Click"/>
    </div>
</asp:Content>
