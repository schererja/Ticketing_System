<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Project_1.Confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
       <link rel="stylesheet" type="text/css" href="Styles/Site.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style001">
        <tr>
            <td class="style002">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblThankYou" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style003">
                Issue Submitted:</td>
            <td class="style004">
                <asp:Label ID="lblIssueSubmitted" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style002">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style002">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style002">
                Priority:</td>
            <td>
                <asp:Label ID="lblPriority" runat="server"></asp:Label>
                <asp:Image ID="imgPriority" runat="server" Height="16px" Width="16px" />
            </td>
        </tr>
        <tr>
            <td class="style002">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnConfirm" runat="server" Text="Confirm" />
            </td>
        </tr>
    </table>
</asp:Content>
