<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="uploadImage.aspx.cs" Inherits="WPD_CollectorsDen.admin.uploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Upload Image</h1>
    <fieldset><legend>Upload Photo</legend>
    <asp:FileUpload ID="UploadControlimage" runat="server" />
        <br />
    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="UploadImage_Click" /> 
        <asp:Literal ID="Lituploadedimage" runat="server"></asp:Literal>
    </fieldset>
    <br />

    <fieldset><legend>Image Uploaded</legend>
    <div id="ImageUploaded">
    <asp:Image ID="imagecurrent" runat="server" />

    </div>
        </fieldset>

    <asp:Button ID="return_btn" runat="server" Text="Return" OnClick="return_btn_Click" />
</asp:Content>
