﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IIIBF_BUK_ALUMNI.Models;

namespace IIIBF_BUK_ALUMNI
{
    public partial class articles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            ArticleList_Listview.SelectMethod = "GetArticles";
        }
        public IQueryable<Article> GetArticles()
        {
            string title = Search.Text;
            var _db = new IIIBF_BUK_ALUMNI.Models.ApplicationDbContext();
            IQueryable<Article> query = _db.Articles.OrderByDescending(d => d.DatePosted);
            if (String.IsNullOrEmpty(title))
            {

            }
            else
            {
                query = query.Where(p => p.Title == title);
            }
            
            return query;
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            ArticleList_Listview.SelectMethod = "GetArticles";
        }
    }
}