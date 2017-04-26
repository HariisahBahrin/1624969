<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WPD_CollectorsDen.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="loginbox">
        
       <fieldset><legend>Log In</legend>
        <table id="logintbl">
            <tr>
                <th><asp:Label runat="server"> Username: </asp:Label></th>
                <th><asp:TextBox ID="txtloginusername" runat="server" Size="30" style="margin-left: 0px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqNameValidator" runat="server" ControlToValidate="txtloginusername" ForeColor="Red" ErrorMessage="Please enter your Username."></asp:RequiredFieldValidator>
                </th>
            </tr>

            <tr>
        <th><asp:Label runat="server"> Password: </asp:Label> </th>
        <th><asp:TextBox ID="txtloginpassword" runat="server" Size="30" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqPasswordValidator" runat="server" ControlToValidate="txtloginpassword" ForeColor="Red" ErrorMessage="Please enter your password."></asp:RequiredFieldValidator>
                
        </th>
            </tr>

            </table>
            </fieldset>
           
                <asp:Button ID="btnlogin" OnClick="btnlogin_Click" runat="server" Text="Login" />
                <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
                  
         
       
    </div>

</asp:Content>
