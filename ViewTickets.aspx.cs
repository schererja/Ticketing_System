using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Project_1
{
    public partial class ViewTickets : System.Web.UI.Page
    {
        Dictionary<string, string> ticket = new Dictionary<string, string>();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session.Count > 0)
                {
                    Dictionary<string, string> ticket = new Dictionary<string, string>();
                    HtmlTable table = new HtmlTable();
                    table.Width = "100%";
                    HtmlTableCell cell1 = new HtmlTableCell();
                    cell1.Width = "15%";
                    HtmlTableCell cell2 = new HtmlTableCell();
                    cell2.Width = "15%";
                    HtmlTableCell cell3 = new HtmlTableCell();
                    cell3.Width = "15%";
                    HtmlTableCell cell4 = new HtmlTableCell();
                    cell4.Width = "15%";
                    HtmlTableCell cell5 = new HtmlTableCell();
                    cell5.Width = "15%";
                    HtmlTableCell cell6 = new HtmlTableCell();
                    cell6.Width = "15%";
                    HtmlTableCell cell7 = new HtmlTableCell();
                    cell7.Width = "15%";
                    HtmlTableRow row = new HtmlTableRow();

                    cell1.InnerHtml = "Name";
                    cell2.InnerHtml = "Department";
                    cell3.InnerHtml = "Phone Number";
                    cell4.InnerHtml = "E-Mail";
                    cell5.InnerHtml = "Type of Issue";
                    cell6.InnerHtml = "Short Description";
                    cell7.InnerHtml = "Priority";

                    row.Cells.Add(cell1);
                    row.Cells.Add(cell2);
                    row.Cells.Add(cell3);
                    row.Cells.Add(cell4);
                    row.Cells.Add(cell5);
                    row.Cells.Add(cell6);
                    row.Cells.Add(cell7);
                    table.Rows.Add(row);
                    int numOfTickets = (int)Session["ticketNum"];
                    for (int i = 1; i <= numOfTickets; i++)
                    {
                        
                        ticket = (Dictionary<string, string>)Session["ticket" + i];
                        row = new HtmlTableRow();
                        cell1 = new HtmlTableCell();
                        cell1.InnerText = ticket["firstName"] + " " + ticket["lastName"];
                        row.Cells.Add(cell1);
                        cell2 = new HtmlTableCell();
                        cell2.InnerText = ticket["department"];
                        row.Cells.Add(cell2);
                        cell3 = new HtmlTableCell();
                        cell3.InnerText = ticket["phoneNum"];
                        row.Cells.Add(cell3);
                        cell4 = new HtmlTableCell();
                        cell4.InnerText = ticket["email"];
                        row.Cells.Add(cell4);
                        cell5 = new HtmlTableCell();
                        cell5.InnerText = ticket["typeIssue"];
                        row.Cells.Add(cell5);
                        cell6 = new HtmlTableCell();
                        cell6.InnerText = ticket["issue"];
                        row.Cells.Add(cell6);
                        cell7 = new HtmlTableCell();
                        
                        cell7.InnerText = ticket["priority"];
                        row.Cells.Add(cell7);

                        table.Rows.Add(row);
                    }
                    
                    ContentPlaceHolder cphContentPlaceHolder = (ContentPlaceHolder)Master.FindControl("MainContent");
                    cphContentPlaceHolder.Controls.Add(table);
                   
                }
           }
        }
    }
}