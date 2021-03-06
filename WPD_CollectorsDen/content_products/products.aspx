﻿<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="WPD_CollectorsDen.content_products.products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            
    <h1> All Products </h1>
    <!--Add Search Bar-->

    <!--Price in Ascending order or descending order-->

    <table style="width:100%">
  
   
  <tr>
    <td class="index-auto-style1"> 
		<div class="product_imgicon">
            <img alt="GundamUnicorn" class="auto-style5" runat="server" src="~/images/icons/FG001.jpg" /></div>
		<ul class="product_ul">
			 <li class="product_name"><a href="product_details/FG001.aspx">Perfect Grade Unicorn Gundam Luminus Clear 7-11 Clear Exclusive</a></li>
			<li class="in_stock">IN-STOCK</li>
		    <li class="product_price"> BND$150.00 </li>
		</ul>
	    </td>
    <td class="auto-style2"> 
        <div class="product_imgicon">
            <img alt="PGBanshee" class="auto-style6" runat="server" src="~/images/icons/FG002.jpg" /></div>
		<ul class="product_ul">
		  <li class="product_name"><a href="product_details/FG002.aspx">Perfect Grade Unicorn Gundam 02 Banshee Norn</a></li>
		<li class="in_stock">IN-STOCK</li>
            <li class="product_price">BND$89.00</li>
		</ul>
	    </td> 
    <td class="auto-style3"> 
		<div class="product_imgicon">
            <img alt="barbatosfullmecha" class="auto-style7" runat="server" src="~/images/icons/FG003.jpg" /></div>
		<ul class="product_ul">
		  <li class="product_name"><a href="product_details/FG003.aspx">Full Mechanics Gundam Barbatos Lupus Rex Plastic Model from Mobile Suit Gundam Iron-Blooded Orphans</a></li>
			<li class="in_stock">IN-STOCK</li>
		    <li class="product_price"> BND$180.00 </li>
		</ul>
	    </td>
  </tr>
  <tr>
    <td class="index-auto-style1"> 
		<div class="product_imgicon">
            <img alt="optimusprimemega" class="auto-style6" runat="server" src="~/images/icons/FG004.jpg" /></div>
		<ul class="product_ul">
		  <li class="product_name"><a href="default.aspx">MAS-01 Optimus Prime Mega 18 Action Figure</a></li>
			<li class="in_stock">IN-STOCK</li>
		    <li class="product_price"> BND$123.00 </li>
		</ul>
	    </td>
    <td class="auto-style2"><!--Female Figure-->
		<div class="product_imgicon">
            <img alt="striker_eureka" class="auto-style6" runat="server" src="~/images/icons/FG005.jpg" /></div>
		<ul class="product_ul">
		  <li class="product_name"><a href="default.aspx">Pacific Rim - 7 Figure Essential Jaegers Series 01 - Striker Eureka</a></li>
			<li class="pre_order">PRE-ORDER AVAILABLE</li>
		  <li class="product_day">Release date: Sep-2017</li>

		  <li class="product_price">BND$80.00</li>
		</ul>
	    </td> 
    <td class="auto-style3"> <!--Male Figure-->
		<div class="product_imgicon">
            <img alt="normandy_Sr1" class="auto-style8" runat="server" src="~/images/icons/FG006.jpg" /></div>
		<ul class="product_ul">
		  <li class="product_name"><a href="default.aspx">Mass Effect Alliance Normandy SR-1 Ship Replica</a></li>
			<li class="in_stock">IN-STOCK</li>
		    <li class="product_price"> BND$250.00 </li>
		</ul>
	    </td>
  </tr>
            <tr>
    <td class="index-auto-style1"> <!--New Arrival-->
		<div class="product_imgicon">
            <img alt="at-at" class="auto-style8" runat="server" src="~/images/icons/FG007.jpg" /></div>
		<ul class="product_ul">
		  <li class="product_name"><a href="default.aspx">Star Wars 1 144 Scale Model Kit - AT-AT</a></li>
			<li class="in_stock">IN-STOCK</li>
		    <li class="product_price"> BND$110.00 </li>
		</ul>
	    </td>
    <td class="auto-style2"><!--Female Figure-->
		<div class="product_imgicon">
            <img alt="wing_starfighter" class="auto-style8" runat="server" src="~/images/icons/FG008.jpg" /></div>
		<ul class="product_ul">
		  <li class="product_name"><a href="default.aspx">Star Wars Vehicle Model #002 - X-Wing Starfighter</a></li>
			<li class="pre_order">PRE-ORDER AVAILABLE</li>
		  <li class="product_day">Release date: Jun-2017</li>
             <li class="product_price">BND$80.00</li>
		</ul>
	    </td> 
    <td class="auto-style3"><!--Male Figure-->
		<div class="product_imgicon">
            <img alt="scorpion_pistol" class="auto-style8" runat="server" src="~/images/icons/FG009.jpg" /></div>
		<ul class="product_ul">
		  <li class="product_name"><a href="default.aspx">Mass Effect 3 Scorpion Pistol Full Scale Replica</a></li>
			<li class="in_stock">IN-STOCK</li>
		    <li class="product_price"> BND$122.00 </li>
		</ul>
	    </td>
  </tr>

     </table>
   
</asp:Content>
