<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MemberDetails.aspx.cs" Inherits="IIIBF_BUK_ALUMNI.MemberDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="memberDetail" runat="server" ItemType="IIIBF_BUK_ALUMNI.Models.Member" SelectMethod ="GetMember" RenderOuterTable="false"> 
        <ItemTemplate> 
            <div> 
                <h1><%#:Item.FirstName %> <%#:Item.LastName %> <%#:Item.OtherName %></h1>
                <em>Email: <strong><%#:Item.Email %></strong></em>

            </div> 
            <br />
            <div class="row">
                <div class="col-md-6">
                    <table> 
                        <tr> 
                            <td> <img src="/img/Members/<%#:Item.PassportPath %>" style="border:solid; height:300px" alt="<%#:Item.FirstName %>"/> </td>
                            <td>&nbsp;</td>                     
                        </tr>
                
                    </table>
                </div>
                <div class="col-md-3">
                    <table>
                        <tr>
                            <td style="vertical-align: top; text-align:justify;"><br /><strong>Address</strong><br /> <%#:Item.Address%> <br /></td>

                        </tr>
                        <tr>
                            <td style="vertical-align: top; text-align:justify;"><br /><strong>State of Origin</strong><br /> <%#:Item.StateOfOrigin%> <br /></td>

                        </tr>
                        <tr>
                    
                            <td style="vertical-align: top; text-align:justify;"><br /><strong>Place of Work</strong><br /> <%#:Item.PlaceOfWork%> <br /></td>
                        </tr>
                        <tr>
                    
                            <td style="vertical-align: top; text-align:justify;"><br /><strong>Qualification</strong><br /> <%#:Item.Qualification%> <br /></td>
                        </tr>
                        <tr>
                    
                            <td style="vertical-align: top; text-align:justify;"><br /><strong>Qualification</strong><br /> <%#:Item.DateOfBirth%> <br /></td>
                        </tr>
                    </table>
                </div>
                <div class="col-md-3">
                    <table>
                        <tr>
                    
                            <td style="vertical-align: top; text-align:justify;"><br /><strong>Qualification</strong><br /> <%#:Item.Membership%> <br /></td>
                        </tr>
                        <tr>
                    
                            <td style="vertical-align: top; text-align:justify;"><br /><strong>Qualification</strong><br /> <%#:Item.PhoneNumber%> <br /></td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; text-align:justify;"><br /><strong>Gender</strong><br /> <%#:Item.Gender%> <br /></td>

                        </tr>
                        <tr>
                            <td style="vertical-align: top; text-align:justify;"><br /><strong>Marital Status</strong><br /> <%#:Item.MaritalStatus%> <br /></td>

                        </tr>
                        <tr>
                    
                            <td style="vertical-align: top; text-align:justify;"><br /><strong>Position</strong><br /> <%#:Item.Position%> <br /></td>
                        </tr>
                        <tr>
                    
                            <td style="vertical-align: top; text-align:justify;"><br /><strong>Set</strong><br /> <%#:Item.Set%> <br /></td>
                        </tr>
                    </table>
                </div>
            </div>
            
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
