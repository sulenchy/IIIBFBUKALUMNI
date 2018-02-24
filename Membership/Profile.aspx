<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="IIIBF_BUK_ALUMNI.Membership.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <br />
    <h2 style="color:red">Welcome, your acceptance status is <asp:Label ID="AcceptanceStatus" runat="server" Text=""></asp:Label></h2>
    <hr />
    <div class="col-md-6">
                <section id="loginForm">
                    <div class="#">
                        <div class="form-group">
                            <label class="control-label" for="Email">Email</label>
                            <asp:TextBox ID="Email" CssClass="form-control" placeholder="Enter Email" Text="" runat="server" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" CssClass="text-danger" ErrorMessage="The Email field is required." />
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="Firstname"> Firstname</label>
                            <asp:TextBox ID="Firstname" CssClass="form-control" placeholder="Enter Firstname" runat="server" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Firstname" CssClass="text-danger" ErrorMessage="The firstname field is required." />
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="Lastname">Lastname</label>
                            <asp:TextBox runat="server" ID="Lastname" CssClass="form-control" TextMode="SingleLine" placeholder="Enter Lastname"  />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Lastname" CssClass="text-danger" ErrorMessage="The lastname field is required." />

                        </div>
                        <div class="form-group">
                            <label for="Othername" class="control-label">Othername</label>
                            <asp:TextBox runat="server" ID="Othername" CssClass="form-control" placeholder="Enter Othername"  />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Othername" CssClass="text-danger" ErrorMessage="The Othername field is required." />

                        </div>
                        <div class="form-group">
                            <label for="Othername" class="control-label">Date of Birth</label>
                            <asp:TextBox runat="server" ID="DateOfBirth" CssClass="form-control" placeholder="Select a Date" TextMode="Date"/>
                            <asp:RequiredFieldValidator runat="server"  ControlToValidate="DateOfBirth" ID="Val_DateOfBirth" CssClass="text-danger" ErrorMessage="The DateOfBirth field is required." />

                        </div>
                        <div class="form-group">
                            <label class="control-label" for="Content">Address</label>
                            <asp:TextBox ID="Address" CssClass="form-control" placeholder="Enter Address" runat="server" TextMode="MultiLine"/>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Address" CssClass="text-danger" ID="Val_Address"  ErrorMessage="The address field is required." />

                        </div>
                        <div class="form-group">
                            <label for="Position" class="control-label">Set</label>
                
                            <asp:TextBox runat="server" ID="Set" CssClass="form-control" placeholder="Enter Position"/>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Set" CssClass="text-danger" ErrorMessage="The Position field is required." />
                
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="ArticleImage">Upload Passport</label>
                            <asp:FileUpload ID="Passport" runat="server"/>

                        </div>
                    
                    </div>
                </section>
            </div>
            <div class="col-md-6">
                <section id="loginForm1">
                    <div class="#">
                        <div class="form-group">
                    <label class="control-label" for="StateOfOrigin">State of Origin</label>
                
                        <asp:TextBox runat="server" ID="StateOfOrigin" CssClass="form-control"  placeholder="Enter State of Origin" TextMode="SingleLine" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="StateOforigin" id="Val_StateOfOrigin"
                            CssClass="text-danger" ErrorMessage="The StateOfOrigin field is required." />
                
                </div>
                  <div class="form-group">
                    <label class="control-label" for="PhoneNumber">Phone Number</label>
                        <asp:TextBox runat="server" ID="PhoneNumber" CssClass="form-control" placeholder="Enter Phonenumber" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="PhoneNumber"  CssClass="text-danger" ErrorMessage="The PhoneNumber field is required." />
                </div>
                <div class="form-group">
                    <label runat="server" for="Gender">Gender</label>
                    
                        <asp:DropDownList ID="Gender" CssClass="form-control" runat="server">
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Gender" ID="Val_Gender"
                            CssClass="text-danger" ErrorMessage="The Gender field is required." />
                </div>
                  <div class="form-group">
                    <label runat="server" for="MaritalStatus">Marital Status</label>
                        <asp:DropDownList ID="MaritalStatus" CssClass="form-control" runat="server" >
                            <asp:ListItem>Divorced</asp:ListItem>
                            <asp:ListItem>Married</asp:ListItem>
                            <asp:ListItem>Single</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ID="Val_MaritalStatus" ControlToValidate="MaritalStatus" 
                            CssClass="text-danger" ErrorMessage="The MaritalStatus field is required." />
                </div>
                    <div class="form-group">
                    <label runat="server" for="Membership">Membership</label>
                        <asp:DropDownList ID="Membership" CssClass="form-control" runat="server" Enabled="false" >
                            <asp:ListItem>Member</asp:ListItem>
                            <asp:ListItem>Staff</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ID="Val_Membership" ControlToValidate="Membership" Enabled="false"
                            CssClass="text-danger" ErrorMessage="The Membership field is required." />
                </div>
                    <div class="form-group">
                    <label for="Qualification" class="control-label">Qualification</label>
                
                        <asp:TextBox runat="server" ID="Qualification" CssClass="form-control" placeholder="Enter Qualification" TextMode="MultiLine"/>
                        <asp:RequiredFieldValidator runat="server" ID="Val_Qualification" ControlToValidate="Qualification"  CssClass="text-danger" ErrorMessage="The Qualification field is required." />
                
                </div>
                    <div class="form-group">
                    <label for="Position" class="control-label">Position</label>
                
                        <asp:TextBox runat="server" ID="Position" CssClass="form-control" Enabled="false" placeholder="Enter Position"/>
                        <asp:RequiredFieldValidator runat="server" ID="Val_Position" ControlToValidate="Position"  Enabled="false" CssClass="text-danger" ErrorMessage="The Position field is required." />
                
                </div>
                        <div class="form-group">
                    <label for="Position" class="control-label">Place of work</label>
                
                        <asp:TextBox runat="server" ID="PlaceOfWork" CssClass="form-control"  placeholder="Enter Position"/>
                        <asp:RequiredFieldValidator ID="Val_PlaceOfWork" runat="server" ControlToValidate="PLaceOfWork"   CssClass="text-danger" ErrorMessage="The Position field is required." />
                
                </div>

                    </div>
                </section>
            </div>
            <div class="form-group">
            <div class="col-md-offset-4 col-md-8">
                <asp:Button ID="Btn_Update" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="Btn_Update_Click" />
            </div>
        </div>
            
</asp:Content>
