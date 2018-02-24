<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MemberAcceptance.aspx.cs" Inherits="IIIBF_BUK_ALUMNI.Admin.MemberAcceptance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h3>List of Members.</h3>
            
            <section id="loginForm">
                <asp:ListView id="articleList" itemType="IIIBF_BUK_ALUMNI.Models.Member" runat="server" selectMethod="GetMemberByAcceptanceStatus">
                    <ItemTemplate>
                        <div class="col-md-4 text-center">
                            <img src="/img/Members/<%#:Item.PassportPath%>" width="300" height="200" style="border: solid" />
                                <p><%#: Item.FirstName  %>&nbsp<%#: Item.LastName  %>&nbsp <%#: Item.OtherName  %></p>
                                <p><%#: Item.PhoneNumber  %></p>
                                <p><%#: Item.Email  %></p>
                            <b style="font-size:large; font-style: normal">
                                
                                <a href="/Admin/ConfirmAcceptance.aspx?acceptanceStatus=Declined&email=<%#: Item.Email %>" class="btn btn-primary">Decline</a>
                                <a href="/Admin/ConfirmAcceptance.aspx?acceptanceStatus=Accepted&email=<%#: Item.Email %>" class="btn btn-primary">Accept</a>
                            </b>
                            <br/>
                        </div>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <<h3 class="text-danger">No record was found</h3>
                    </EmptyDataTemplate>
                </asp:ListView>
            </section>
        </div>
        </div>
</asp:Content>
