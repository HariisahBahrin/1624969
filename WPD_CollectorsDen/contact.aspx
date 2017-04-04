<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WPD_CollectorsDen.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2> Contact Us</h2>
    <p>Answers to common questions can be found on our "<a href="about_us.aspx">About Us</a>" page. Please use the mail form below to contact us regarding other inquiries.</p>
    <p> Need help? Submit your questions to us now!</p>
    <p> Note: Please be patience with our reply. We will reply to you in 24 hours on business days. Thank you!</p>
    <p id="RequiredFields"> * Required Fields. </p>

    
   <!--'Form'-->
<form method="post" action="">
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
						<input name="Name" type="text" id="FirstName" size="60" /> 
					</td>
					
				</tr>
                <tr>
					<td>
						<label>*Last Name:</label>
					</td>
					<td>
						<input name="Name" type="text" id="LastName" size="60" />
					</td>
					
				</tr>
				<tr>
					<td>
						<label>*E-mail Address:</label>
					</td>
					<td>
						<input name="Name" type="text" id="Email" size="60"/>
					</td>
				</tr>
				<tr>
					<td>
						<label>Phone Number:</label>
					</td>
					<td>
						<input name="Name" type="text" id="Phone_Number" size="60"/>
					</td>
				</tr>
				
			</table>
		</fieldset> <!--End Customer Info-->

        <br />

        <fieldset><legend style="width: 65px"> Message </legend>
			<table>
				<tr>
					<td>
						<label>*Your Message:</label>
					</td>
					<td>
						<textarea id="requests" rows="20" cols="100"></textarea>
					</td>
				</tr>
			</table>
		</fieldset> <!--End Customer message-->
		
				<br />
                <br />
                <br />
				<input type="submit" value="Submit"/> 
										
				<input type="reset" value="Clear"/> 
						
	</td>
</tr>	
    
    			
</table>
</form>

    <fieldset><legend> Where to find us? </legend>
    <div id="googleMap" style="width:100%;height:400px;"></div>
    <script src="scripts/map.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDATOmmUjmmDpXmZ61AT_Qr0mUYYflKENk&callback=myMap"></script>
        </fieldset>
    

</asp:Content>