using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace IIIBF_BUK_ALUMNI.Models
{
    public class Article
    {
        [ScaffoldColumn(false)]
        public int ArticleID { get; set; }
        [Required, StringLength(100), Display(Name = "Title")]
        public string Title { get; set; }
        [Required, StringLength(1000), Display(Name = "Introduction")]
        public string Introduction { get; set; }
        [Required, StringLength(100000), Display(Name = "Article Content"), DataType(DataType.MultilineText)]
        public string Content { get; set; }
        public string ImagePath { get; set; }
        public DateTime? DatePosted { get; set; }
        public string PostBy { get; set; }
        public virtual ICollection<Comment> Comment { get; set; }
    }
}