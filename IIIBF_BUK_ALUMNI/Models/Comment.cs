using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace IIIBF_BUK_ALUMNI.Models
{
    public class Comment
    {
        [ScaffoldColumn(false)]
        public int CommentID { get; set; }
        public int? ArticleID { get; set; }
        [Required, StringLength(10000), Display(Name = "Comment"), DataType(DataType.MultilineText)]
        public string Content { get; set; }
        [Required]
        public DateTime? CommentDate { get; set; }
    }
}