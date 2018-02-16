<%@ Page Title="Article" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewArticle.aspx.cs" Inherits="IIIBF_BUK_ALUMNI.Admin.ManageArticles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="AddStatus" />
    </p>
    <div class="row">
        <div class="col-md-6">
            <h3>Create new article.</h3>
            <hr />
            <section id="loginForm">
                <div class="#">
                    <div class="form-group">
                        <label class="control-label" for="ArticleIntro">Title</label>
                        <asp:TextBox ID="txtTitle" CssClass="form-control" placeholder="Enter Title" runat="server" />
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="ArticleIntro">Introduction</label>
                        <asp:TextBox ID="txtArticleIntro" CssClass="form-control" placeholder="Enter Introduction" runat="server" />
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="ArticleImage">Upload Image</label>
                        <asp:FileUpload ID="ArticleImage" runat="server" />
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="Content">Content</label>
                        <asp:TextBox ID="txtContent" CssClass="form-control" placeholder="Enter Content" runat="server" TextMode="MultiLine" />
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" ID="Btn_Add" Text="Add new" CssClass="btn btn-default" OnClick="Btn_Add_Click" />
                    </div>
                </div>
            </section>
        </div>

        
    </div>



</asp:Content>
