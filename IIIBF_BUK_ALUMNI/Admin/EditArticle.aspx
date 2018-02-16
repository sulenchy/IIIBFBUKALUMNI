<%@ Page Title="Article" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditArticle.aspx.cs" Inherits="IIIBF_BUK_ALUMNI.Admin.EditArticle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="UpdateStatus" text="Article updated successfully" Visible="false"/>
    </p>
    

    <asp:FormView ID="articleDetail" runat="server" ItemType="IIIBF_BUK_ALUMNI.Models.Article" SelectMethod ="GetArticle" RenderOuterTable="false" OnPageIndexChanging="articleDetail_PageIndexChanging" OnItemCommand="articleDetail_ItemCommand"> 
        <ItemTemplate> 
            
         
    <div class="row">
        <div class="col-md-6">
            <h3>Edit Article.</h3>
            <hr />
            <section id="loginForm">
                <div class="#">
                    <div class="form-group">
                        <label class="control-label" for="ArticleIntro">Title</label>
                        <asp:TextBox ID="txtTitle" CssClass="form-control" placeholder="Enter Title" text="<%#Item.Title %>" runat="server" />
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="ArticleIntro">Introduction</label>
                        <asp:TextBox ID="txtIntro" CssClass="form-control" placeholder="Enter Introduction" Text="<%#Item.Introduction %>" runat="server" />
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="ArticleImage">Upload Image</label>
                        <asp:Literal runat="server" ID="ArticleImageFilename" Text="<%# Item.ImagePath %>" Visible="false" />
                        <asp:FileUpload ID="ArticleImage" runat="server" />
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="Content">Content</label>
                        <asp:TextBox ID="txtContent" CssClass="form-control" placeholder="Enter Content" Text="<%#Item.Content %>" runat="server" TextMode="MultiLine" />
                    </div>
                    <div class="form-group">
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" CommandName="UpdateInfo">  OK  </asp:LinkButton>
                       
                    </div>
                </div>
            </section>
        </div>        
    </div>
        </ItemTemplate>
    </asp:FormView>
    
</asp:Content>
