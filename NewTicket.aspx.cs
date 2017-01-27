using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_1
{
    public partial class NewTicket : System.Web.UI.Page
    {
        int i;
        Dictionary<string, string> ticket = new Dictionary<string, string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count == 0)
            {
                i = 1;
            }
            else
            {
                i = Session.Count;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            
                string firstName = string.Empty;
                string lastName = string.Empty;
                string department = string.Empty;
                string phoneNum = string.Empty;
                string typeOfIssue = string.Empty;
                string issue = string.Empty;
                string priority = string.Empty;


                firstName = txtFirstName.Text;
                lastName = txtLastName.Text;
                department = ddlDepartment.SelectedValue;
                phoneNum = txtPhoneNumber.Text;
                typeOfIssue = rblTypeOfIssue.SelectedValue;
                issue = txtIssue.Text;
                priority = ddlPriority.SelectedValue;

                ticket.Add("firstName", firstName);
                ticket.Add("lastName", lastName);
                ticket.Add("department", department);
                ticket.Add("phoneNum", phoneNum);
                ticket.Add("email", txtEmail.Text);
                ticket.Add("typeIssue", typeOfIssue);
                ticket.Add("issue", issue);
                ticket.Add("priority", priority);

                Session.Add("ticket" + i, ticket);
                Session.Add("ticketNum", i);
                Response.Redirect("confirmation.aspx");
                i++;
            
        }
    }
}