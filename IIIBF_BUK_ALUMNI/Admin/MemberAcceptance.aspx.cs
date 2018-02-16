using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;
using IIIBF_BUK_ALUMNI.Models;

namespace IIIBF_BUK_ALUMNI.Admin
{
    public partial class MemberAcceptance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        public IQueryable<Member> GetMemberByAcceptanceStatus([QueryString("acceptanceStatus")] string acceptanceStatus)
        {
            var _db = new IIIBF_BUK_ALUMNI.Models.ApplicationDbContext();
            IQueryable<Member> query = _db.Members;
            if (acceptanceStatus != "")
            {
                query = query.Where(p => p.AcceptanceStatus == acceptanceStatus);

            }
            else
            {
                query = null;
            }
            return query;
        }
    }
}