using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IIIBF_BUK_ALUMNI.Logic;

namespace IIIBF_BUK_ALUMNI.Admin
{
    public partial class DeleteArticle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            try
            {
                int id = int.Parse(Request.QueryString["articleId"]);
                var article = new Articles();
                bool removeStatus = article.RemoveArticle(id);
                Response.Redirect("/Admin/ViewArticles");
            }
            catch(Exception ex)
            {
                Literal2.Text = ex.Message;
            }
        }
    }
}