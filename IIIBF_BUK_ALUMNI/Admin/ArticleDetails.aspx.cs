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
    public partial class ArticleDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Article> GetArticle([QueryString("articleID")] int? articleId)
        {
            var _db = new IIIBF_BUK_ALUMNI.Models.ApplicationDbContext();
            IQueryable<Article> query = _db.Articles;
            if (articleId.HasValue && articleId > 0)
            {
                query = query.Where(p => p.ArticleID == articleId);
            }
            else
            {
                query = null;
            }
            return query;
        }


        public IQueryable<Member> GetMember()
        {
            string email = "admin@gmail.com";
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
    }
}