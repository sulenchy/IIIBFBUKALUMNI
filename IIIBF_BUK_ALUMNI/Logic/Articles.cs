using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using IIIBF_BUK_ALUMNI.Models;
using System.Data.Entity.Migrations;

namespace IIIBF_BUK_ALUMNI.Logic
{
    public class Articles
    {
        //adds new article
        public bool AddArticles(string title, string introduction, string content, string imagePath, DateTime datePosted, string postBy)

        {
                var myArticle = new Article();
                myArticle.Title = title;
                myArticle.Introduction = introduction;
                myArticle.Content = content;
            myArticle.ImagePath = imagePath;
                myArticle.DatePosted = datePosted;
                myArticle.PostBy = postBy;

                using (ApplicationDbContext _db = new ApplicationDbContext())
                {
                    _db.Articles.Add(myArticle);
                    _db.SaveChanges();

                    return true;
                }
            
        }

        //removes an existing article
        public bool RemoveArticle(int articleID)
        {
            using (ApplicationDbContext _db = new ApplicationDbContext())
            {
                var myItem = (from c in _db.Articles where c.ArticleID == articleID select c).FirstOrDefault();
                if (myItem != null)
                {
                    _db.Articles.Remove(myItem);
                    _db.SaveChanges();
                }
                return true;
            }
        }

        //edit or update an existing article
        public bool UpdateArticles(int articleID,string title, string introduction, string content, string imageFilename, DateTime datePosted, string postBy)

        {
            using (ApplicationDbContext _db = new ApplicationDbContext())
            {
                var myArticle = _db.Articles.SingleOrDefault(b => b.ArticleID == articleID );
                if (myArticle != null)
                {
                    myArticle.Title = title;
                    myArticle.Introduction = introduction;
                    myArticle.Content = content;
                    myArticle.ImagePath = imageFilename;
                    myArticle.DatePosted = datePosted;
                    myArticle.PostBy = postBy;
                    _db.SaveChanges();
                }
                return true;
            }

        }
    }
}