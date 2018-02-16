<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConfirmAcceptance.aspx.cs" Inherits="IIIBF_BUK_ALUMNI.Admin.ConfirmAcceptance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
    <div class='form-horizontal'>
            <br />
        <br />
        <p class="text-danger">
            <asp:Literal ID="Literal2" runat="server"></asp:Literal>
        </p>
        <div class="col-md-4">
            <div class="form-group">
                <label for="Position" class="control-label">Position</label>
                <asp:TextBox runat="server" ID="Position" CssClass="form-control" placeholder="Enter Position" />
            </div>
            <div class="form-group">
                <label runat="server" for="Membership">Membership</label>
                <asp:DropDownList ID="Membership" CssClass="form-control" runat="server">
                    <asp:ListItem>Member</asp:ListItem>
                    <asp:ListItem>Staff</asp:ListItem>
                </asp:DropDownList>
            </div>
            
        </div>
        

    </div>
    <div class="form-group col-md-12">
       <asp:Literal ID='Literal1' runat='server' Text='Please, confirm the operation'></asp:Literal> 
            <asp:Button ID='Button1' runat='server' Text='Confirm' CssClass='btn btn-primary' OnClick='Button1_Click'/>
            <asp:Button ID='Button2' runat='server' Text='Cancel' CssClass='btn btn-primary' OnClick="Button2_Click"/>     
    
    </div>
</asp:Content>
