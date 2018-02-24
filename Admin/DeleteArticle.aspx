<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteArticle.aspx.cs" Inherits="IIIBF_BUK_ALUMNI.Admin.DeleteArticle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <p class="text-danger">
        <asp:Literal ID="Literal2" runat="server"></asp:Literal>
    </p>
    <div class="form-horizontal">
        <asp:Literal ID="Literal1" runat="server" Text="Article is about to be deleted. Confirm the operation"></asp:Literal>
        <asp:Button ID="Button1" runat="server" Text="Delete" CssClass="btn btn-primary" OnClick="Button1_Click" />
    </div>
    
</asp:Content>
