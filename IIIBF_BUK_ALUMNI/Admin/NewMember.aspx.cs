using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IIIBF_BUK_ALUMNI.Logic;
using IIIBF_BUK_ALUMNI.Models;
using System.Web.ModelBinding;

namespace IIIBF_BUK_ALUMNI.Admin
{
    public partial class AddMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string memberAction = Request.QueryString["MemberAction"];
            if (memberAction == "add")
            {
                AddStatus.Text = "Member added successfully!";
            }
            if (memberAction == "remove")
            {
                //LabelRemoveStatus.Text = "Product removed!";
            }
        }

        protected void Add_Member_Click(object sender, EventArgs e)
        {
            
             
        }

        protected void Btn_Add_New_Click(object sender, EventArgs e)
        {
            try
            {
                Boolean fileOK = false;
                String path = Server.MapPath("~/img/Members/");
                if (Passport.HasFile)
                {
                    String fileExtension = System.IO.Path.GetExtension(Passport.FileName).ToLower();
                    String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" };
                    for (int i = 0; i < allowedExtensions.Length; i++)
                    {
                        if (fileExtension == allowedExtensions[i])
                        {
                            fileOK = true;
                        }
                    }
                }
                if (fileOK)
                {
                    try
                    {
                        // Save to Images folder. 
                        Passport.PostedFile.SaveAs(path + Passport.FileName);
                        // Save to Images/Thumbs folder.
                        Passport.PostedFile.SaveAs(path + Passport.FileName);
                    }
                    catch (Exception ex)
                    {
                        AddStatus.Text = ex.Message;
                    }
                    // Add product data to DB. 
                    Members members = new Members();
                    bool addSuccess = members.AddMember(Email.Text, Firstname.Text, Lastname.Text, Othername.Text, Address.Text, Gender.SelectedValue,
                        MaritalStatus.SelectedValue, Qualification.Text, Position.Text, DateTime.Parse(DateOfBirth.Text), PhoneNumber.Text, StateOfOrigin.Text,
                        Passport.FileName, Membership.SelectedValue,"N/A","N/A","N/A");
                    if (addSuccess)
                    {
                        // Reload the page. 
                        string pageUrl = Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
                        Response.Redirect(pageUrl + "?MemberAction=add");
                    }
                    else
                    {
                        AddStatus.Text = "Unable to add new member to database.";
                    }
                }
                else
                {
                    AddStatus.Text = "Unable to accept file type.";
                }
            }
            catch(Exception ex)
            {
                AddStatus.Text = ex.Message;
            }

        }


        
    }
}