<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="WPD_CollectorsDen.products.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="ProductDetails" runat="server" ItemType="" SelectMethod="GetProduct" RenderOuterTable="false">
        <ItemTemplate>
            <div> <h1> <%#:Product_tbl.Product_Name%></h1></div>
                <br />

            <table>
                <tr>
                    <td>
                        <img id="productdetailimg" runat="server" src="~/images/products/<%#:Products_tbl.ImagePath %>" />
                    </td>
                    <td> &nbsp; </td>
                    <td>
                        <span><b>Price:</b>
                            <%#: String.Format("{0:c}", Product_tbl.Price) %>
                        </span>

                        <b>Description:</b>
                        <br />
                        <%#:Product_tbl.Product_Description %>
                        <br />          
                        
                    </td>


                </tr>
            </table>
        </ItemTemplate>

    </asp:FormView>
</asp:Content>
