using IIIBF_BUK_ALUMNI.Logic;
using System;
using System.Linq;

namespace IIIBF_BUK_ALUMNI.Admin
{
    public partial class ManageArticles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ArticleAction = Request.QueryString["ArticleAction"];
            if (ArticleAction == "add") {
                AddStatus.Text = "Article added!";
            }
            
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }

        protected void Unname1_Click(object sender, EventArgs e)
        {



        }

        protected void Btn_Add_Click(object sender, EventArgs e)
        {

            //AddStatus.Text = "Sulenchy, I am in working mode";
            Boolean fileOK = false;
            String path = Server.MapPath("~/img/Articles/");
            if (ArticleImage.HasFile) {
                String fileExtension = System.IO.Path.GetExtension(ArticleImage.FileName).ToLower();
                String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" };
                for (int i = 0; i < allowedExtensions.Length; i++) {
                    if (fileExtension == allowedExtensions[i]) {
                        fileOK = true;
                    }
                }
            }
            if (fileOK)
            {
                try
                { // Save to Images folder. 
                    ArticleImage.PostedFile.SaveAs(path + ArticleImage.FileName); // Save to Images/Thumbs folder.
                    
                }
                catch (Exception ex) {
                    AddStatus.Text = ex.Message;
                }
                // Add Article data to DB. 
                var Articles = new Articles();
                bool addSuccess = Articles.AddArticles(txtTitle.Text, txtArticleIntro.Text,txtContent.Text, ArticleImage.FileName, DateTime.Now, "Admin" );
                if (addSuccess) {
                    // Reload the page. 
                    string pageUrl = Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
                    Response.Redirect(pageUrl + "?ArticleAction=add");
                }
                else {
                    AddStatus.Text = "Unable to add new Article to database.";
                }
            }
            else {
                AddStatus.Text = "Unable to accept file type.";
            }
        }
    }
}