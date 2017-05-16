<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WPD_CollectorsDen.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <h2> Log In </h2>
    <!--The following codes are taken from Microsoft - Adding ASP.NET Identity to an Empty or Existing Web Forms Project which can be found here:https://docs.microsoft.com/en-us/aspnet/identity/overview/getting-started/adding-aspnet-identity-to-an-empty-or-existing-web-forms-project -->
    <!--Following "<asp:Panel>" and "Validation" are eferred from Jakrahal's post on https://www.sitepoint.com/community/t/multiple-forms-on-one-aspx-page/4101 - this helps in solving my problems that I encountered-->
            <p>
            <asp:Literal runat="server" ID="StatusText" />
        </p>
    
    
        <asp:Panel ID="loginPanel" DefaultButton="btnlogin" runat="server"> 
            <div id="loginbox2">
         
       <fieldset><legend>Log In</legend>
          
        <table id="logintbl">
            <tr>
                <th><p> Username: </p></th>
                <th><asp:TextBox ID="txtloginusername" runat="server" Size="30" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqNameValidator" runat="server" ControlToValidate="txtloginusername" ForeColor="Red" ErrorMessage="Please enter your Username."></asp:RequiredFieldValidator>
                </th>
            </tr>

            <tr>
        <th><p>Password: </p> </th>
        <th><asp:TextBox ID="txtloginpassword" runat="server" Size="30" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqPasswordValidator" runat="server" ControlToValidate="txtloginpassword" ForeColor="Red" ErrorMessage="Please enter your password."></asp:RequiredFieldValidator>
                
        </th>
            </tr>

            </table>
                <br />
                <asp:Button ID="btnlogin" OnClick="btnlogin_Click" runat="server" Text="Login" ValidationGroup="one"/>
                <asp:Literal ID="LitLoginResult" runat="server"></asp:Literal>
                <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
               
            </fieldset>
               </div>
            </asp:Panel>
    <br />

    <div>

         
     <!--'Registration Form'-->
        
    <h2> Registration </h2>
    
    <p>
        <asp:Literal runat="server" ID="StatusMessage" />
    </p>
    
       
        <asp:Panel ID="registrationpanel" DefaultButton="btnregister" runat="server">
  		<fieldset><legend> Customer Information</legend>
			<table>
				<tr>
					<td>
						<label>*First Name:</label>
					</td>
					<td>
						<asp:TextBox ID="txtFirstName" runat="server" size="60"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ForeColor="Red" ErrorMessage="Please enter your first name."></asp:RequiredFieldValidator>
					</td>
					
				</tr>
                <tr>
					<td>
						<label>*Last Name:</label>
					</td>
					<td>
						<asp:TextBox ID="txtLastName" runat="server" size="60"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqNameValidator2" runat="server" ControlToValidate="txtLastName" ForeColor="Red" ErrorMessage="Please enter your last name."></asp:RequiredFieldValidator>
					
					</td>
					
				</tr>

                <tr>
                <td><label>Username: </label></td>
                <td><asp:TextBox ID="txtusernamereg" runat="server" Size="30"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtusernamereg" ForeColor="Red" ErrorMessage="Please enter your Username."></asp:RequiredFieldValidator>
                </td>
            </tr>

                <tr>
               <td><label> Password: </label></td>
                <td><asp:TextBox ID="txtpwdreg" runat="server" Size="30" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwdreg" ForeColor="Red" ErrorMessage="Please enter your password."></asp:RequiredFieldValidator>
                
                 </td>
            </tr>
                 <tr>
               <td><asp:Label runat="server"> Confirm Password: </asp:Label> </td>
                <td><asp:TextBox ID="txtpwdreg2" runat="server" Size="30" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqPasswordValidator2" runat="server" ControlToValidate="txtpwdreg2" ForeColor="Red" ErrorMessage="Please enter your password."></asp:RequiredFieldValidator>
                     <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtpwdreg"
                ControlToValidate="txtpwdreg2" runat="server" />
                
                 </td>
            </tr>
				<tr>
					<td>
						<label>*E-mail Address:</label>
					</td>
					<td>
						<asp:TextBox ID="txtEmail" runat="server" size="60"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqFieldEmail" runat="server" ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Please enter your email."></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegExprChkEMail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
					</td>
				</tr>
                <tr>
					<td>
						<label>*Retype E-mail Address:</label>
					</td>
					<td>
						<asp:TextBox ID="txtEmail2" runat="server" size="60"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Please enter your email."></asp:RequiredFieldValidator>
            <asp:CompareValidator ErrorMessage="E-mails do not match." ForeColor="Red" ControlToCompare="txtEmail" ControlToValidate="txtEmail2" runat="server"/></td>
				</tr>
				<tr>
					<td>
						<label>Phone Number:</label>
					</td>
					<td>
						<asp:TextBox ID="txtPhoneNum" runat="server" size="60"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhoneNum" ErrorMessage="Invalid phone number." ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
					
					</td>
				</tr>
                  <tr>
					<td>
						<label>*Address:</label>
					</td>
					<td>
						<asp:TextBox ID="txtAddress" runat="server" rows="10" cols="100" TextMode="MultiLine" Width="800px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddress" ForeColor="Red" ErrorMessage="Please enter address."></asp:RequiredFieldValidator>
					
					</td>
					
				</tr>
                </table>
              <br />
		
				<asp:Button ID="btnregister" OnClick="btnregister_Click" runat="server"  Text="Register" ValidationGroup="two"/>
				<asp:Button ID="btnClear" OnClick="btnclear_Click" runat="server"  Text="Clear" />	
                <asp:Literal ID="litRegisterError2" runat="server"></asp:Literal>

		        </fieldset> <!--End Customer Info-->		
			    </asp:Panel>
    
      </div>
        

</asp:Content>
