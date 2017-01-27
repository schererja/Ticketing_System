<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Project_1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
        <center><asp:Image ID="Image2" runat="server" Height="64px" 
            ImageUrl="~/imgs/support-redbutton.gif" Width="64px" />
           
        Welcome to a basic ticketing system
       <asp:Image ID="Image1" runat="server" 
            Height="64px" ImageUrl="~/imgs/suport.jpg" Width="64px" />
            </center>
    
    <br />
    This is a basic ticketing system to allow a customer to enter a new ticket and 
    to then be able to view the tickets that are put in.&nbsp; The information is stored 
    in a session which allows all the tickets to be able to viewed for as long as 
    the session is there.

</asp:Content>
