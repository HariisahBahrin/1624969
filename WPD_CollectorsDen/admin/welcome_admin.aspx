<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="welcome_admin.aspx.cs" Inherits="WPD_CollectorsDen.admin.welcome_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Welcome Admin</h1>
    <p> What would like to do today?</p>
    <ul>
        <li><a href="edit_ProductDB.aspx">Edit Product Database</a> </li>
        <li><a href="edit_ProductDB.aspx">Edit Users Database</a> </li>
    </ul>
    <asp:Button ID="logout_adminpage" runat="server" Text="Log Out" OnClick="logout_adminpage_Click" />

</asp:Content>
