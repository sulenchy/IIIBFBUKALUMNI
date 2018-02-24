<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Articles.aspx.cs" Inherits="IIIBF_BUK_ALUMNI.articles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row text-center">
        <h2 class="#">Recent Articles</h2>
        <div id="ArticleMenu" style="text-align:left">
            <div class="form-orizontal">
                    
                    <div class="form-group row">
                        <div class="col-md-3">
                            <asp:TextBox runat="server" ID="Search" CssClass="form-control" placeholder="Search by Title" />
                        </div>
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Search" OnClick="Button1_Click" />
                              
                    </div>                  
                    
                </div>
            <asp:ListView id="ArticleList_Listview"
                itemType="IIIBF_BUK_ALUMNI.Models.Article"
                runat="server" EnableViewState="false">
                <ItemTemplate>
                    <div class="col-md-4 text-center">
                        <img src="/img/Articles/<%#:Item.ImagePath%>" width="300" height="200" style="border: solid" />
                            <h3><%#: Item.Title  %></h3>
                        <p><%#: Item.Introduction  %></p>
                            <a class="#" href="/ArticleDetails.aspx?articleId=<%#: Item.ArticleID  %>">
                                Read More
                            </a>       
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
        </div>
        
    </div>
</asp:Content>
