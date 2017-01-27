<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewTicket.aspx.cs" Inherits="Project_1.NewTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    Please Enter a New Ticket:</p>
<table class="style1">
    <tr>
        <td class="style10">
            First Name:</td>
        <td class="style12">
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </td>
        <td class="style11">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtFirstName" ErrorMessage="Please enter your first name."></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Last Name:</td>
        <td class="style13">
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtLastName" ErrorMessage="Please enter last name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Department:</td>
        <td class="style13">
            <asp:DropDownList ID="ddlDepartment" runat="server">
                <asp:ListItem Value="Select One">--Select One --</asp:ListItem>
                <asp:ListItem>Manufacturing</asp:ListItem>
                <asp:ListItem>Engineering</asp:ListItem>
                <asp:ListItem>IT</asp:ListItem>
                <asp:ListItem>Accounting</asp:ListItem>
                <asp:ListItem>Sales</asp:ListItem>
                <asp:ListItem>Purchasing</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="ddlDepartment" ErrorMessage="Please Select a Department" 
                InitialValue="Select One"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style8">
            Phone Number:</td>
        <td class="style14">
            <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
        </td>
        <td class="style9">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtPhoneNumber" Display="Dynamic" 
                ErrorMessage="Phone Number is Required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtPhoneNumber" 
                ErrorMessage="Phone number must be XXX-XXX-XXXX" 
                ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Email:</td>
        <td class="style13">
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
        <td class="style3">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtEmail" Display="Dynamic" 
                ErrorMessage="Email must be in name@domain.xyz format." 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ControlToValidate="txtEmail" Display="Dynamic" 
                ErrorMessage="Email is required to submit form."></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style17">
            What type of issue:</td>
        <td class="style15">
            <asp:RadioButtonList ID="rblTypeOfIssue" runat="server" Font-Bold="False">
                <asp:ListItem>Software</asp:ListItem>
                <asp:ListItem>Hardware</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="rblTypeOfIssue" Display="Dynamic" 
                ErrorMessage="Please select the type of issue"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            What is the issue:</td>
        <td class="style13">
            <asp:TextBox ID="txtIssue" runat="server" Height="105px" Rows="4" Width="271px" 
                TextMode="MultiLine" MaxLength="255" ForeColor="Silver"></asp:TextBox>
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtIssue" Display="Dynamic" 
                ErrorMessage="Please enter a short description"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Priority</td>
        <td class="style13">
            <asp:DropDownList ID="ddlPriority" runat="server" Height="16px">
                <asp:ListItem Value="Pick One">--Pick One --</asp:ListItem>
                <asp:ListItem>Low</asp:ListItem>
                <asp:ListItem>Medium</asp:ListItem>
                <asp:ListItem>High</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="ddlPriority" Display="Dynamic" 
                ErrorMessage="Please pick a priority" InitialValue="Pick One"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style4">
        </td>
        <td class="style16">
        </td>
        <td class="style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style13">
            <asp:Button ID="btnSubmit" runat="server" onclick="Button1_Click" 
                Text="Submit Ticket" />
        </td>
        <td class="style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style13">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server"/>
        </td>
        <td class="style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
