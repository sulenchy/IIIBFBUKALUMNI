<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ArticleDetails.aspx.cs" Inherits="IIIBF_BUK_ALUMNI.Admin.ArticleDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="articleDetail" runat="server" ItemType="IIIBF_BUK_ALUMNI.Models.Article" SelectMethod ="GetArticle" RenderOuterTable="false"> 
        <ItemTemplate> 
            <div> 
                <h1><%#:Item.Title %></h1>
                <em>Post By: <%#:Item.PostBy %></em>

            </div> 
            <br /> 
            <table> 
                <tr> 
                    <td> <img src="/img/Articles/<%#:Item.ImagePath %>" style="border:solid; height:300px" alt="<%#:Item.Title %>"/> </td>
                    <td>&nbsp;</td> 
                    <td style="vertical-align: top; text-align:justify;"><br /><%#:Item.Content %> <br /> &nbsp;<em><%#:Item.DatePosted %></em></span> <br /> </td> 

                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>

    <asp:FormView ID="FormView1" runat="server" ItemType="IIIBF_BUK_ALUMNI.Models.Member" SelectMethod ="GetMember" RenderOuterTable="false"> 
        <ItemTemplate> 
            <div> 
                <h1><%#:Item.Email %></h1>
                <em>Post By: <%#:Item.DateOfBirth %></em>
            </div> 
            <br /> 
            
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
