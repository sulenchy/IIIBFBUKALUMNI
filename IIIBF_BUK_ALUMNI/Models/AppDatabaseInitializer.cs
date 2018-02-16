using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace IIIBF_BUK_ALUMNI.Models
{
    public class AppDatabaseInitializer: DropCreateDatabaseAlways<ApplicationDbContext>
    {
        protected override void Seed(ApplicationDbContext context)
        {
            GetMembers().ForEach(m => context.Members.Add(m));
            GetArticles().ForEach(a => context.Articles.Add(a));
            GetComments().ForEach(c => context.Comments.Add(c));
        }

        private static List<Member> GetMembers()
        {
            var members = new List<Member> {
                new Member { Email = "Amosa@ibrahim.com", FirstName= "Ibrahim", LastName= "Amosa", OtherName="", Address="23, naibawa kano nigeria",DateOfBirth=DateTime.Now,Gender="Male",MaritalStatus="Married",StateOfOrigin="Kwara",PhoneNumber= "(281)934-998-2447",PassportPath="executive1.jpg",Qualification="",Position="",AcceptanceStatus="Accepted",Membership="Staff"},
                new Member { Email = "Muhammed@Abdulaziz.com", FirstName= "Muhammed", LastName= "Abdulaziz", OtherName="", Address="23, naibawa kano Nigeria",DateOfBirth=DateTime.Now,Gender="Male",MaritalStatus="Married",StateOfOrigin="Kano",PhoneNumber= "(281)934-998-2447",PassportPath="executive2.jpg",Qualification="",Position="",AcceptanceStatus="Accepted",Membership="Staff"},
                new Member { Email = "buhari@Daud.com", FirstName= "buhari", LastName= "Daud", OtherName="", Address="24, Internal house estate", DateOfBirth=DateTime.Now,Gender="Male",MaritalStatus="Married",StateOfOrigin="Kaduna",PhoneNumber="(281)934-998-2447",PassportPath="executive3.jpg",Qualification="",Position="",AcceptanceStatus="Accepted",Membership="Staff"},
            };
            return members;
        }

        private static List<Article> GetArticles()
        {
            var articles = new List<Article> {
                new Article { ArticleID = 1, Title = "School closing date", Introduction= "It has become the norms of the school to announce to the students and parent the closing date", Content= "The school is closing on 25th of December 2017. We hereby inform parents to come to school and pick their children", ImagePath= "schoolclosing.jpg", DatePosted=DateTime.Parse("2/12/2018 8:25:30 AM"),PostBy ="Admin" },
                new Article { ArticleID = 2, Title = "PTA meeting", Introduction= "We hereby inform you that the yearly PTA meeting has schedule to take place on 25 of december, 2017", Content= "Pat meeting is a meeting where administrative, teachers and parents meet tyo discuss the situations in school", ImagePath= "pta.png",DatePosted= DateTime.Parse("2/11/2018 3:25:30 AM"), PostBy="Admin" },
                new Article { ArticleID = 3, Title = "School closing date", Introduction= "It has become the norms of the school to announce to the students and parent the closing date", Content= "The school is closing on 25th of December 2017. We hereby inform parents to come to school and pick their children", ImagePath= "schoolclosing.jpg", DatePosted= DateTime.Parse("2/1/2018 10:25:30 AM"),PostBy="Admin" },
                new Article { ArticleID = 4, Title = "PTA meeting", Introduction= "We hereby inform you that the yearly PTA meeting has schedule to take place on 25 of december, 2017", Content= "Pat meeting is a meeting where administrative, teachers and parents meet tyo discuss the situations in school", ImagePath= "pta.png",DatePosted= DateTime.Parse("1/12/2018 4:25:30 AM"), PostBy="Admin" },
                new Article { ArticleID = 5, Title = "PTA meeting", Introduction= "We hereby inform you that the yearly PTA meeting has schedule to take place on 25 of december, 2017", Content= "Pat meeting is a meeting where administrative, teachers and parents meet tyo discuss the situations in school", ImagePath= "pta.png",DatePosted= DateTime.Parse("2/9/2018 6:25:30 AM"), PostBy="Admin" },
                new Article { ArticleID = 6, Title = "PTA meeting", Introduction= "We hereby inform you that the yearly PTA meeting has schedule to take place on 25 of december, 2017", Content= "Pat meeting is a meeting where administrative, teachers and parents meet tyo discuss the situations in school", ImagePath= "pta.png",DatePosted= DateTime.Parse("2/2/2018 7:25:30 AM"), PostBy="Admin" },
                new Article { ArticleID = 7, Title = "PTA meeting", Introduction= "We hereby inform you that the yearly PTA meeting has schedule to take place on 25 of december, 2017", Content= "Pat meeting is a meeting where administrative, teachers and parents meet tyo discuss the situations in school", ImagePath= "pta.png",DatePosted= DateTime.Parse("2/3/2018 9:25:30 AM"), PostBy="Admin" },
            };
            return articles;
        }
        private static List<Comment> GetComments()
        {
            var comments = new List<Comment> {
                new Comment{CommentID = 1, ArticleID = 1, Content= "Good move from you guys", CommentDate = DateTime.Now},
            };
            return comments;
        }
    }
}