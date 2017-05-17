<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FG003.aspx.cs" Inherits="WPD_CollectorsDen.content_products.FG003" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h2> Full Mechanics Gundam Barbatos Lupus Rex Plastic Model from Mobile Suit Gundam Iron-Blooded Orphans </h2>

    <div id="image_product">
        <img src="../../images/products/FG003.jpg" alt="GundamUnicorn" />

    </div>

<fieldset><legend> Product Information</legend>
			<table>
				<tr>
					<td><label>Product ID:</label></td>
					<td><p>FG003</p></td>
				</tr>
                <tr>
					<td><label>Product Category:</label></td>
					<td><a href="../gundam.aspx">Gundam</a></td>
				</tr>
                <tr>
					<td><label>Price:</label></td>
					<td><p> BND$ 45.00 </p></td>					
				</tr>
				<tr>
					<td><label>Decription:</label></td>
					<td>
                        <p>The 1/100 Iron-Blooded Orphans line continues with an emphasis on Realistic Detail, Movable Action, and Real Frame. Barbatos Lupus Rex includes a wide variety of weapons including a giant mace, tail claw-mounted at the back which can be deploy just like in the animation for battle. Detail has been further enhanced both in the frame that shows the internal skeleton of the mecha and also through new color separated parts that allow for minute details to be made without paint. </p>
				    </td>
				</tr>
								
			</table>
    
		</fieldset> 
    <br />
    <asp:Button ID="place_order_link" runat="server" Text="Place Order" OnClick="place_order_link_Click" />
    <asp:Literal ID="LitPlaceOrder" runat="server"></asp:Literal>
</asp:Content>
