using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using IIIBF_BUK_ALUMNI.Models;
using System.Web.ModelBinding;

namespace IIIBF_BUK_ALUMNI.Logic
{
    public class Members
    {
        public bool AddMember(string email, string firstname, string lastname, string othername, string address,string gender, 
            string maritalStatus, string qualification, string position, DateTime dateOfBirth,string phoneNumber, string stateOfOrigin, 
            string passportPath, string membership, string placeOfWork, string set, string acceptanceStatus)

        {
            var newMember = new Models.Member ();
            newMember.Email = email;
            newMember.FirstName = firstname;
            newMember.LastName = lastname;
            newMember.OtherName = othername;
            newMember.Address = address;
            newMember.Gender = gender;
            newMember.MaritalStatus = maritalStatus;
            newMember.Qualification = qualification;
            newMember.Position = position;
            newMember.DateOfBirth = dateOfBirth;
            newMember.PhoneNumber = phoneNumber;
            newMember.StateOfOrigin = stateOfOrigin;
            newMember.PassportPath = passportPath;
            newMember.Membership = membership;
            newMember.PlaceOfWork = placeOfWork;
            newMember.Set = set;
            newMember.AcceptanceStatus = acceptanceStatus;
            
            using (ApplicationDbContext _db = new ApplicationDbContext())
            { 
                // Add member to DB. 
                _db.Members.Add(newMember);
                _db.SaveChanges();
            }
            // Success. 
            return true;
        }


        public bool UpdateMember(string email, string firstname, string lastname, string othername, string address, string gender,
            string maritalStatus, string qualification, string position, DateTime dateOfBirth, string phoneNumber, string stateOfOrigin,
            string passportPath, string membership, string placeOfWork, string set,string acceptanceStatus)

        {
            using (ApplicationDbContext _db = new ApplicationDbContext())
            {
                var newMember = _db.Members.SingleOrDefault(b => b.Email == email);
                if (newMember != null)
                {
                    newMember.Email = email;
                    newMember.FirstName = firstname;
                    newMember.LastName = lastname;
                    newMember.OtherName = othername;
                    newMember.Address = address;
                    newMember.Gender = gender;
                    newMember.MaritalStatus = maritalStatus;
                    newMember.Qualification = qualification;
                    newMember.Position = position;
                    newMember.DateOfBirth = dateOfBirth;
                    newMember.PhoneNumber = phoneNumber;
                    newMember.StateOfOrigin = stateOfOrigin;
                    newMember.PassportPath = passportPath;
                    newMember.Membership = membership;
                    newMember.PlaceOfWork = placeOfWork;
                    newMember.Set = set;
                    newMember.AcceptanceStatus = acceptanceStatus;
                    _db.SaveChanges();
                }
                return true;
            }
        }


        public bool UpdateUndecidedMember(string email, string firstname, string lastname, string othername,string passportPath,  string set)

        {
            using (ApplicationDbContext _db = new ApplicationDbContext())
            {
                var newMember = _db.Members.SingleOrDefault(b => b.Email == email);
                if (newMember != null)
                {
                    newMember.Email = email;
                    newMember.FirstName = firstname;
                    newMember.LastName = lastname;
                    newMember.OtherName = othername;
                    newMember.PassportPath = passportPath;
                    newMember.Set = set;
                    _db.SaveChanges();
                }
                return true;
            }
        }


        //removes an existing article
        public bool RemoveMember(string email)
        {
            using (ApplicationDbContext _db = new ApplicationDbContext())
            {
                var myItem = (from c in _db.Members where c.Email == email select c).FirstOrDefault();
                if (myItem != null)
                {
                    _db.Members.Remove(myItem);
                    _db.SaveChanges();
                }
                return true;
            }
        }


        public IQueryable<Models.Member> GetMember([QueryString("email")] string email)
        {
            var _db = new IIIBF_BUK_ALUMNI.Models.ApplicationDbContext();
            IQueryable<Models.Member> query = _db.Members;
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


        //decline membership
        public bool ConfirmMembership(string email,string acceptanceStatus, string position, string membership)

        {
            using (ApplicationDbContext _db = new ApplicationDbContext())
            {
                var newMember = _db.Members.SingleOrDefault(b => b.Email == email);
                if (newMember != null)
                {
                    newMember.Email = email;
                    newMember.AcceptanceStatus = acceptanceStatus;
                    newMember.Position = position;
                    newMember.Membership = membership;
                    _db.SaveChanges();
                }
                return true;
            }
        }

        public bool DeclineMembership(string email, string acceptanceStatus)

        {
            using (ApplicationDbContext _db = new ApplicationDbContext())
            {
                var newMember = _db.Members.SingleOrDefault(b => b.Email == email);
                if (newMember != null)
                {
                    newMember.Email = email;
                    newMember.AcceptanceStatus = acceptanceStatus;
                }
                return true;
            }
        }

    }
}