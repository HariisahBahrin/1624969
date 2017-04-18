<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WPD_CollectorsDen.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--'Form'-->
    <h2> Registration </h2>
    
<table>
<tr>
	<td>
		<fieldset><legend> Customer Information</legend>
			<table>
				<tr>
					<td>
						<label>*First Name:</label>
					</td>
					<td>
						<asp:TextBox ID="txtFirstName" runat="server" size="60"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqNameValidator" runat="server" ControlToValidate="txtFirstName" ForeColor="Red" ErrorMessage="Please enter your first name."></asp:RequiredFieldValidator>
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
                <td><asp:TextBox ID="txtusername" runat="server" Size="30"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtusername" ForeColor="Red" ErrorMessage="Please enter your Username."></asp:RequiredFieldValidator>
                </td>
            </tr>

                <tr>
               <td><label> Password: </label></td>
                <td><asp:TextBox ID="txtpassword" runat="server" Size="30" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqPasswordValidator" runat="server" ControlToValidate="txtpassword" ForeColor="Red" ErrorMessage="Please enter your password."></asp:RequiredFieldValidator>
                
                 </td>
            </tr>
                 <tr>
               <td><asp:Label runat="server"> Confirm Password: </asp:Label> </td>
                <td><asp:TextBox ID="txtpassword2" runat="server" Size="30" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqPasswordValidator2" runat="server" ControlToValidate="txtpassword" ForeColor="Red" ErrorMessage="Please enter your password."></asp:RequiredFieldValidator>
                     <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtpassword"
                ControlToValidate="txtpassword2" runat="server" />
                
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Please enter your email."></asp:RequiredFieldValidator>
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
						<label>*Country:</label>
					</td>
					<td>
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem> Brunei Darussalam</asp:ListItem>
                            <asp:ListItem> Malaysia </asp:ListItem>
                        </asp:DropDownList>
                        <!-- DROP DOWN MENU FOR COUNTRIES AVAILABLE
						<asp:TextBox ID="TextBox2" runat="server" size="60"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress" ForeColor="Red" ErrorMessage="Please enter address."></asp:RequiredFieldValidator>
					-->
					</td>
					
				</tr>
                  <tr>
					<td>
						<label>*Address:</label>
					</td>
					<td>
						<asp:TextBox ID="txtAddress" runat="server" rows="10" cols="100" TextMode="MultiLine" Width="800px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress" ForeColor="Red" ErrorMessage="Please enter address."></asp:RequiredFieldValidator>
					
					</td>
					
				</tr>
				
			</table>
		</fieldset> <!--End Customer Info-->

        <br />
		
				
                <br />
				<asp:Button ID="btnregister" runat="server"  Text="Register" />
										
				<input type="reset" value="Clear"/> 
                
						
	</td>
</tr>	
    
    	
</table>


</asp:Content>
