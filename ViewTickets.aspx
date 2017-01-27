<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewTickets.aspx.cs" Inherits="Project_1.ViewTickets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        List of Tickets Entered:</p>
<p>
        <asp:Table ID="tblTickets" runat="server">
        </asp:Table>
</p>
   
</asp:Content>
