using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;
using IIIBF_BUK_ALUMNI.Models;

namespace IIIBF_BUK_ALUMNI
{
    public partial class MemberDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Member> GetMember([QueryString("email")] string email)
        {
            var _db = new ApplicationDbContext();
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
    }
}