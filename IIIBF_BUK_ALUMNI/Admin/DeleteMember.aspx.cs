using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IIIBF_BUK_ALUMNI.Logic;

namespace IIIBF_BUK_ALUMNI.Admin
{
    public partial class DeleteMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string email = Request.QueryString["email"];
                var article = new Members();
                bool removeStatus = article.RemoveMember(email);
                if (removeStatus)
                {
                    Response.Redirect("/Admin/ViewMembers");
                }
                else
                {
                    Literal2.Text = "Sorry, the selected member could not be remove. Pls try again";
                }
                
            }
            catch (Exception ex)
            {
                Literal2.Text = ex.Message;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/ViewMembers");
        }
    }
}