using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IIIBF_BUK_ALUMNI.Models;
using IIIBF_BUK_ALUMNI.Logic;
using System.Web.ModelBinding;

namespace IIIBF_BUK_ALUMNI.Admin
{
    public partial class EditArticle : System.Web.UI.Page
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

        protected void articleDetail_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        //Update an existing club.
        protected void UpdateClub()
        {
            TextBox tbTitle;
            TextBox tbIntro;
            TextBox tbContent;
            FileUpload fileUpload;
            string title;
            int id = int.Parse(Request.QueryString["articleId"]);
            var article = new Articles();
            tbTitle = (TextBox)articleDetail.FindControl("txtTitle");
            title = tbTitle.Text;
            tbIntro = (TextBox)articleDetail.FindControl("txtIntro");
            //intro = tbIntro.Text;
            tbContent = (TextBox)articleDetail.FindControl("txtContent");
            //content = tbContent.Text;
            fileUpload = (FileUpload)articleDetail.FindControl("ArticleImage");

            Literal literal;
            literal = (Literal)articleDetail.FindControl("ArticleImageFilename");

            //AddStatus.Text = "Sulenchy, I am in working mode";
            Boolean fileOK = false;
            String path = Server.MapPath("~/img/Articles/");
            if (fileUpload.HasFile)
            {
                String fileExtension = System.IO.Path.GetExtension(fileUpload.FileName).ToLower();
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
                { // Save to Images folder. 
                    fileUpload.PostedFile.SaveAs(path + fileUpload.FileName); // Save to Images/Thumbs folder.

                }
                catch (Exception ex)
                {
                    UpdateStatus.Text = ex.Message;
                }
                // Add Article data to DB. 
                var Articles = new Articles();
                bool updateSuccess = article.UpdateArticles(id, title, tbIntro.Text, tbContent.Text, fileUpload.FileName, DateTime.Now, "admin");
                if (updateSuccess)
                {
                    // Reload the page. 
                    string pageUrl = Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
                    UpdateStatus.Text = "Article Updated successfully";
                    UpdateStatus.Visible = true;
                    Response.Redirect("/Admin/ViewArticles");
                }
                else
                {
                    UpdateStatus.Text = "Unable to update the article in the database.";
                }
            }
            else
            {
                // Add Article data to DB. 
                var Articles = new Articles();
                bool updateSuccess = article.UpdateArticles(id, title, tbIntro.Text, tbContent.Text, literal.Text, DateTime.Now, "admin");
                if (updateSuccess)
                {
                    // Reload the page. 
                    string pageUrl = Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
                    
                    UpdateStatus.Text = "Article Updated successfully";
                    UpdateStatus.Visible = true;
                    Response.Redirect("/admin/ViewArticles");
                }
                else
                {
                    UpdateStatus.Text = "Unable to update the article in the database.";
                };
            }          
            
        }

        protected void Btn_Ok_Click(object sender, EventArgs e)
        {
            
        }

        protected void articleDetail_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "UpdateInfo":
                    UpdateClub();
                    break;
                default:
                    break;
            }
        }
    }
}