using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;
using IIIBF_BUK_ALUMNI.Logic;

namespace IIIBF_BUK_ALUMNI.Admin
{
    public partial class ConfirmAcceptance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["acceptanceStatus"] == "Declined")
            {
                Position.Enabled = false;
                Membership.Enabled = false;
            }
            else
            {
                Literal1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var member = new Members();
            string status = Request.QueryString["acceptanceStatus"];
            string email = Request.QueryString["email"];
            if (status == "Declined")
            {
                member.DeclineMembership(email,"Declined");
                Response.Redirect("/Admin/ViewMembers");
            }
            else if (status == "Accepted")
            {
                member.ConfirmMembership(email, "Accepted",Position.Text ,Membership.Text );
                Response.Redirect("/Admin/ViewMembers");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/ViewMembers");
        }
    }
}