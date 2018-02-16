<%@ Page Title="Members" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewMembers.aspx.cs" Inherits="IIIBF_BUK_ALUMNI.Admin.ViewMembers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <div class="row">
        <div class="col-md-12">
            <h3>List of Members.</h3>
            
            <section id="loginForm">
                <div class="form-orizontal">
                    <div class="col-md-6">
                            <a href="/Admin/MemberAcceptance.aspx?acceptanceStatus=Undecided" class="btn btn-primary">Undecided</a>&nbsp<a href="/Admin/MemberAcceptance.aspx?acceptanceStatus=Declined" class="btn btn-primary">Declined</a>                            
                        </div>
                    <div class="form-group row">
                        <div class="col-md-3">
                            <asp:TextBox runat="server" ID="Search" CssClass="form-control" placeholder="Search by Firstname" />
                        </div>
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Search" OnClick="Button1_Click" />
                              
                    </div>                  
                    
                </div>
            <asp:ListView id="MemberList"
                itemType="IIIBF_BUK_ALUMNI.Models.Member"
                runat="server"  EnableViewState="false">
                <ItemTemplate>
                    <div class="col-md-4 text-center">
                        <img src="/img/Members/<%#:Item.PassportPath%>" width="300" height="200" style="border: solid" />
                            <h3><%#: Item.FirstName %> <%#: Item.LastName %> <%#: Item.OtherName %></h3>
                        <p><%#: Item.PhoneNumber  %></p>
                        <b style="font-size:large; font-style: normal">
                                
                                
                                <a href="/Admin/DeleteMember.aspx?email=<%#: Item.Email  %>">
                                    Delete
                                </a>|
                                <a href="/Admin/EditMember.aspx?email=<%#: Item.Email  %>">
                                    Edit
                                </a>|
                                <a href="/Admin/MemberDetails.aspx?email=<%#: Item.Email  %>">
                                    View more
                                </a>|
                            </b>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul id="itemPlaceholderContainer" runat="server" style="list-style-type: none">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="" class="row">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True"
                                    ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                
            </asp:ListView>      
            </section>
        </div>
    </div>
</asp:Content>
