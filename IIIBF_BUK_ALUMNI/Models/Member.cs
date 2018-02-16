using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace IIIBF_BUK_ALUMNI.Models
{
    public class Member
    {
        [Key, Required, StringLength(100), Display(Name = "Email")]
        public string Email { get; set; }
        [StringLength(100), Display(Name = "FirstName")]
        public string FirstName { get; set; }
        [StringLength(100), Display(Name = "LastName")]
        public string LastName { get; set; }
        [StringLength(100), Display(Name = "OtherName")]
        public string OtherName { get; set; }
        [StringLength(10000), Display(Name = "Address"), DataType(DataType.MultilineText)]
        public string Address { get; set; }
        [Display(Name = "Date Of Birth")]
        public DateTime DateOfBirth { get; set; }
        [StringLength(100), Display(Name = "Gender")]
        public string Gender { get; set; }
        [StringLength(100), Display(Name = "Marital Status")]
        public string MaritalStatus { get; set; }
        [StringLength(100), Display(Name = "State of Origin")]
        public string StateOfOrigin { get; set; }
        [Display(Name = "Phone Number")]
        public string PhoneNumber { get; set; }
        public string PassportPath { get; set; }
        public string Qualification { get; set; }
        public string Position { get; set; }
        public string PlaceOfWork { get; set; }
        public string Set { get; set; }
        public string AcceptanceStatus { get; set; }
        [StringLength(100), Display(Name = "Membership")]
        public string Membership { get; set; }
    }
}