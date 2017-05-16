<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="uploadImage.aspx.cs" Inherits="WPD_CollectorsDen.admin.uploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Upload Image</h1>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="UploadImage_Click" />
</asp:Content>
