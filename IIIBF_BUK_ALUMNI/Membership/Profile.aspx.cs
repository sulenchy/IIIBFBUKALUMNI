﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IIIBF_BUK_ALUMNI.Models;
using IIIBF_BUK_ALUMNI.Logic;
using Microsoft.AspNet.Identity;

namespace IIIBF_BUK_ALUMNI.Membership
{
    public partial class Profile : System.Web.UI.Page
    {

        Members member = new Members();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string email = Context.User.Identity.GetUserName();
                AcceptanceStatus.Text = member.GetMember(email).SingleOrDefault().AcceptanceStatus;
                Email.Text = member.GetMember(email).SingleOrDefault().Email;
                Firstname.Text = member.GetMember(email).SingleOrDefault().FirstName;
                Lastname.Text = member.GetMember(email).SingleOrDefault().LastName;
                Othername.Text = member.GetMember(email).SingleOrDefault().OtherName;
                Address.Text = member.GetMember(email).SingleOrDefault().Address;
                Gender.SelectedValue = member.GetMember(email).SingleOrDefault().Gender;
                MaritalStatus.SelectedValue = member.GetMember(email).SingleOrDefault().MaritalStatus;
                PlaceOfWork.Text = member.GetMember(email).SingleOrDefault().PlaceOfWork;
                Membership.SelectedValue = member.GetMember(email).SingleOrDefault().Membership;
                DateOfBirth.Text =member.GetMember(email).SingleOrDefault().DateOfBirth.Date.ToString();
                Position.Text = member.GetMember(email).SingleOrDefault().Position;
                PhoneNumber.Text = member.GetMember(email).SingleOrDefault().PhoneNumber;
                Set.Text = member.GetMember(email).SingleOrDefault().Set;
                StateOfOrigin.Text = member.GetMember(email).SingleOrDefault().StateOfOrigin;
                Qualification.Text = member.GetMember(email).SingleOrDefault().Qualification;
            }
            
        }

        public IQueryable<Member> GetMember()
        {
            string email = Context.User.Identity.GetUserName();
            var _db = new IIIBF_BUK_ALUMNI.Models.ApplicationDbContext();
            IQueryable<Member> query = _db.Members;
            if (email != "")
            {
                query = query.Where(p => p.Email == email);
            }
            else
            {
                query = null;
            }
            return query;
        }

        protected void Btn_Add_New_Click(object sender, EventArgs e)
        {
            
            
        }

        protected void Btn_Update_Click(object sender, EventArgs e)
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
                        AcceptanceStatus.Text = ex.Message;
                    }
                    // Add product data to DB. 
                    Members members = new Members();
                    bool updateSuccess = members.UpdateMember(Email.Text, Firstname.Text, Lastname.Text, Othername.Text,Address.Text ,Gender.Text ,MaritalStatus.Text ,Qualification.Text ,Position.Text,DateTime.Parse(DateOfBirth.Text),PhoneNumber.Text,StateOfOrigin.Text,Passport.FileName,Membership.Text,PlaceOfWork.Text ,Set.Text,AcceptanceStatus.Text );
                    if (updateSuccess)
                    {
                        // Reload the page. 
                        Response.Redirect("/");
                        AcceptanceStatus.Text = "Record Updated successfully";
                    }
                    else
                    {
                        AcceptanceStatus.Text = "Unable to update member info in the database.";
                    }
                }
                else
                {
                    AcceptanceStatus.Text = "Unable to accept file type.";
                }
            }
            catch (Exception ex)
            {
                AcceptanceStatus.Text = ex.Message;
            }

        }
    }
}