using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IIIBF_BUK_ALUMNI.Models;

namespace IIIBF_BUK_ALUMNI
{
    public partial class MembersList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                MemberList_Listview.SelectMethod = "GetMembers";
        }

        //gets list of members
        public IQueryable<Member> GetMembers()
        {
            string firstname = Search.Text;
            var _db = new IIIBF_BUK_ALUMNI.Models.ApplicationDbContext();
            IQueryable<Member> query = _db.Members.OrderBy(d => d.FirstName);
            if (String.IsNullOrEmpty(firstname))
            {
                query = query.Where(p => p.AcceptanceStatus == "Accepted");
            }
            else
            {
                query = query.Where(p => p.AcceptanceStatus == "Accepted" && p.FirstName == firstname);
            }

            return query;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            MemberList_Listview.SelectMethod =  "GetMembers";
        }

        protected void Btn_Search_Click(object sender, EventArgs e)
        {
            MemberList_Listview.SelectMethod = "GetMembers";
        }
    }
}