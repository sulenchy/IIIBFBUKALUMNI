<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewArticles.aspx.cs" Inherits="IIIBF_BUK_ALUMNI.Admin.ViewArticles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <div class="row">
        <div class="col-md-12">
            <h3>List of Article.</h3>
            
            <section id="loginForm">
                <div class="form-orizontal">
                    
                    <div class="form-group row">
                        <div class="col-md-3">
                            <asp:TextBox runat="server" ID="Search" CssClass="form-control" placeholder="Search by Title" />
                        </div>
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Search" OnClick="Button1_Click" />
                              
                    </div>                  
                    
                </div>
                <asp:ListView id="articleList" itemType="IIIBF_BUK_ALUMNI.Models.Article" EnableViewState="false" runat="server">
                    <ItemTemplate>
                        <div class="col-md-4 text-center">
                            <img src="/img/Articles/<%#:Item.ImagePath%>" width="300" height="200" style="border: solid" />
                                <p><%#: Item.Title  %></p>
                                <p><%#: Item.DatePosted  %></p>
                            <b style="font-size:large; font-style: normal">
                                
                                <a href="/Admin/ArticleDetails.aspx?articleId=<%#: Item.ArticleID  %>">                                    
                                    Read
                                </a>
                                <a href="/Admin/EditArticle.aspx?articleId=<%#: Item.ArticleID  %>">
                                    Edit
                                </a>
                                <a href="/Admin/DeleteArticle.aspx?articleId=<%#: Item.ArticleID  %>">
                                    Delete
                                </a>
                            </b>
                            <br/>
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
