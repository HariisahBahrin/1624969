<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FG002.aspx.cs" Inherits="WPD_CollectorsDen.content_products.product_details.FG002" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2> Perfect Grade Unicorn Gundam 02 Banshee Norn </h2>

    <div id="image_product">
        <img src="../../images/products/FG002.jpg" alt="PGBanshee" />

    </div>

<fieldset><legend> Product Information</legend>
			<table>
				<tr>
					<td><label>Product ID:</label></td>
					<td><p>FG002</p></td>
				</tr>
                <tr>
					<td><label>Product Category:</label></td>
					<td><a href="../gundam.aspx">Gundam</a></td>
				</tr>
                <tr>
					<td><label>Price:</label></td>
					<td><p> BND$ 210.00 </p></td>					
				</tr>
				<tr>
					<td><label>Decription:</label></td>
					<td>
                        <p>The final configuration of the Banshee from 7 episode OVA “Gundam UC,” receives the Perfect Grade treatment! A massive 15” tall, it is capable of transformation from Unicorn Mode to Destroy Mode. It has been engineered to also replicate its massive range of movement while still maintaining its iconic proportion and look. Other features include the use of magnets for its transforming horn, a full armament of weapons including beam magnum with revolving launcher, Armed Armor DE shield system that can also be mounted on backpack, beam sabers, Display stand included. Compatible with LED unit sold separately.</p>
				    </td>
				</tr>
								
			</table>
    
		</fieldset> 
    <br />
    <asp:Button ID="place_order_link" runat="server" Text="Place Order" OnClick="place_order_link_Click" />
    <asp:Literal ID="LitPlaceOrder" runat="server"></asp:Literal>
</asp:Content>
