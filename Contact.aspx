<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="IIIBF_BUK_ALUMNI.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <div class="col-md-6">
        <h3>Contact us.</h3>
        <hr />
        <address>
            The International Institute of Islamic Banking and Finance (IIIBF),<br />
            Bayero University Kano (BUK),<br /> 
            Gwarzo Road,<br /> 
            Kano.<br />
            <abbr title="Phone">P:</abbr>
            +2348034690268
        </address>
        <address>
            <strong>Support:</strong>   <a href="mailto:iiibfalumni@gmail.com">iiibfalumni@gmail.com</a><br/>
            <!--strong>Marketing:</!--strong> <a href="mailto:iiibfalumni@gmail.com">iiibfalumni@gmail.com</a-->
        </address>
        <div id="social-media">
            <h5><strong>Social Media Platform</strong></h5>
            <a href="#">Facebook</a>&nbsp|&nbsp<a href="#">Twitter</a>
        </div>
    </div>
    <div class="col-md-6">
        <h3>Send us Feedback.</h3>
        <hr />
        <div class="form-group">
            <label class="control-label" for="exampleInputEmail">
                Email address</label>
            <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Enter email" runat="server" TextMode="Email" />
        </div>
        <div class="form-group">
            <label class="control-label" for="exampleInputEmail">
                Name</label>
            <asp:TextBox ID="txtName" CssClass="form-control" placeholder="Enter name" runat="server" />
        </div>
        <div class="form-group">
            <label class="control-label" for="exampleInputEmail">
                Title</label>
            <asp:TextBox ID="txtTitle" CssClass="form-control" placeholder="Enter title" runat="server" />
        </div>
        <div class="form-group">
            <label class="control-label" for="exampleInputEmail">
                Message</label>
            <asp:TextBox ID="txtMessage" CssClass="form-control" placeholder="Enter Message" runat="server" TextMode="MultiLine" />
        </div>
            <asp:Button ID="btnSubmitFeedback" class="btn btn-primary" runat="server" Text="Submit" />

    </div>
</asp:Content>
