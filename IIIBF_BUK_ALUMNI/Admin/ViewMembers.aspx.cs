using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IIIBF_BUK_ALUMNI.Models;
using System.Web.ModelBinding;

namespace IIIBF_BUK_ALUMNI.Admin
{
    public partial class ViewMembers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MemberList.SelectMethod = "GetMembers";
        }

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
            MemberList.SelectMethod = "GetMembers";
        }
    }
}