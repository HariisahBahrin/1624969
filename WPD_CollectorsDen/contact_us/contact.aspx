<%@ Page Title="Contact Page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WPD_CollectorsDen.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h2> Contact Us</h2>
    <p>Please use the mail form below to contact us regarding other inquiries.</p>
    <p> Need help? Submit your questions to us now!</p>
    <p> Note: Please be patience with our reply. We will reply to you in 24 hours on business days. Thank you!</p>
    <p id="RequiredFields"> * Required Fields. </p>

    
   <!--'Form'-->
 
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
					<td>
						<label>*E-mail Address:</label>
					</td>
					<td>
						<asp:TextBox ID="txtEmail" runat="server" size="60"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqFieldEmail" runat="server" ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Please enter your email."></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegExprChkEMail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
					</td>
				</tr>
								
			</table>
		</fieldset> <!--End Customer Info-->

        <br />

        <fieldset><legend> Message </legend> 
			<table>
                <tr>
					<td>
						<label>*Subject:</label>
					</td>
					<td>
						<asp:TextBox ID="txtSubject" runat="server" size="60"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="SubjectValidation" runat="server" ControlToValidate="txtSubject" ForeColor="Red" ErrorMessage="Please enter the subject of the message."></asp:RequiredFieldValidator>
					
					</td>
				</tr>
				<tr>
					<td>
						<label>*Your Message:</label>
					</td>
					<td>
						<asp:TextBox ID="txtMsg" runat="server" rows="20" cols="100" TextMode="MultiLine" Width="800px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredtxtMsg" runat="server" ControlToValidate="txtMsg" ForeColor="Red" ErrorMessage="Please enter your message."></asp:RequiredFieldValidator>
					</td>
				</tr>
			</table>
		</fieldset> <!--End Customer message-->
		
				
                <br />
				<asp:Button ID="btnSendEmail" runat="server" OnClick="btnSendEmail_Click" Text="Submit" />
										
				<input type="reset" value="Clear"/> 
                <asp:Literal ID="litResult" runat="server"></asp:Literal>
						
	</td>
</tr>	
    
    	
</table>

  <!-- Form Ends-->
 
    <fieldset><legend> Our Shop </legend>
    <div id="googleMap">
    <script type="text/javascript" src="../scripts/map.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDATOmmUjmmDpXmZ61AT_Qr0mUYYflKENk&callback=myMap"></script>
    </div>
        </fieldset>
    

</asp:Content>