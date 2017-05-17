<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="edit_ProductDB.aspx.cs" Inherits="WPD_CollectorsDen.admin.edit_database" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Edit Products Database </h1>

    
    <asp:Literal ID="LitProductUpdateResult" runat="server"></asp:Literal>
    <asp:Literal ID="LitProductDeleteResult" runat="server"></asp:Literal>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="EditProduct_DataSource">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="StatusID" HeaderText="StatusID" SortExpression="StatusID" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
            <asp:BoundField DataField="Product_Description" HeaderText="Product_Description" SortExpression="Product_Description" />
            <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" />
        </Columns>
    </asp:GridView>

        <asp:SqlDataSource ID="EditProduct_DataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CollectorsDenConnection %>" DeleteCommand="DELETE FROM [Products_tbl] WHERE [ProductID] = @original_ProductID AND [Product_Name] = @original_Product_Name AND [Price] = @original_Price AND (([StatusID] = @original_StatusID) OR ([StatusID] IS NULL AND @original_StatusID IS NULL)) AND (([CategoryID] = @original_CategoryID) OR ([CategoryID] IS NULL AND @original_CategoryID IS NULL)) AND (([Product_Description] = @original_Product_Description) OR ([Product_Description] IS NULL AND @original_Product_Description IS NULL)) AND (([ImagePath] = @original_ImagePath) OR ([ImagePath] IS NULL AND @original_ImagePath IS NULL))" InsertCommand="INSERT INTO [Products_tbl] ([ProductID], [Product_Name], [Price], [StatusID], [CategoryID], [Product_Description], [ImagePath]) VALUES (@ProductID, @Product_Name, @Price, @StatusID, @CategoryID, @Product_Description, @ImagePath)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products_tbl]" UpdateCommand="UPDATE [Products_tbl] SET [Product_Name] = @Product_Name, [Price] = @Price, [StatusID] = @StatusID, [CategoryID] = @CategoryID, [Product_Description] = @Product_Description, [ImagePath] = @ImagePath WHERE [ProductID] = @original_ProductID AND [Product_Name] = @original_Product_Name AND [Price] = @original_Price AND (([StatusID] = @original_StatusID) OR ([StatusID] IS NULL AND @original_StatusID IS NULL)) AND (([CategoryID] = @original_CategoryID) OR ([CategoryID] IS NULL AND @original_CategoryID IS NULL)) AND (([Product_Description] = @original_Product_Description) OR ([Product_Description] IS NULL AND @original_Product_Description IS NULL)) AND (([ImagePath] = @original_ImagePath) OR ([ImagePath] IS NULL AND @original_ImagePath IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductID" Type="String" />
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
                <asp:Parameter Name="original_StatusID" Type="String" />
                <asp:Parameter Name="original_CategoryID" Type="String" />
                <asp:Parameter Name="original_Product_Description" Type="String" />
                <asp:Parameter Name="original_ImagePath" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="String" />
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="StatusID" Type="String" />
                <asp:Parameter Name="CategoryID" Type="String" />
                <asp:Parameter Name="Product_Description" Type="String" />
                <asp:Parameter Name="ImagePath" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="StatusID" Type="String" />
                <asp:Parameter Name="CategoryID" Type="String" />
                <asp:Parameter Name="Product_Description" Type="String" />
                <asp:Parameter Name="ImagePath" Type="String" />
                <asp:Parameter Name="original_ProductID" Type="String" />
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
                <asp:Parameter Name="original_StatusID" Type="String" />
                <asp:Parameter Name="original_CategoryID" Type="String" />
                <asp:Parameter Name="original_Product_Description" Type="String" />
                <asp:Parameter Name="original_ImagePath" Type="String" />
            </UpdateParameters>
    </asp:SqlDataSource>

        <h2>Data Format for Validation</h2>
    <table width="100%" border="1">
        <tr>
            <td>ProductID</td>
            <td>FGxxx <br />
                Insert number to xxx</td>
        </tr>
        <tr>
            <td>Product_Name</td>
            <td>The name of the product</td>
        </tr>
        <tr>
            <td>Price</td>
            <td>00.00</td>
        </tr>
        <tr>
            <td>StatusID</td>
            <td>INSTOCK or NO-STOCK</td>
        </tr>
        <tr>
            <td>CategoryID</td>
            <td>FemFig for Gundam, OR <br />
                MaleFig for SciFiMerchandises
            </td>
        </tr>
        <tr>
            <td>Product_Description</td>
            <td>The Description of the producth</td>
        </tr>
        <tr>
            <td>ImagePath</td>
            <td>Upload Image</td>
        </tr>
    </table>
    
    <br />

    <asp:Button ID="return_btn" runat="server" Text="Return" OnClick="return_btn_Click" />
</asp:Content>
