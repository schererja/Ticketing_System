using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_1
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Dictionary<string, string> newTicket = new Dictionary<string, string>();
            if (!IsPostBack)
            {
                if (Session.Count > 0)
                {
                    int ticketNum = (int)Session["ticketNum"];
                    newTicket = (Dictionary<string, string>)Session["ticket" + ticketNum];
                    lblThankYou.Text = "Thank you for your ticket submission, " +
                                    newTicket["firstName"].ToString() + " " +
                                    newTicket["lastName"].ToString();
                    lblIssueSubmitted.Text = newTicket["issue"].ToString();
                    if (newTicket["priority"].ToString() == "Low")
                    {
                        lblPriority.Text = "Low Priority";
                        imgPriority.ImageUrl = "~/imgs/Button-Blank-Green-icon.png";
                    }
                    else if (newTicket["priority"].ToString() == "Medium")
                    {
                        lblPriority.Text = "Medium Priority";
                        imgPriority.ImageUrl = "~/imgs/Button-Blank-Yellow-icon.png";
                    }
                    else if (newTicket["priority"].ToString() == "High")
                    {
                        lblPriority.Text = "High Priority";
                        imgPriority.ImageUrl = "~/imgs/Button-Blank-Red-icon.png";
                    }
                }
            }
            else
            {
                Response.Redirect("NewTicket.aspx");
            }


            
        }
    }
}