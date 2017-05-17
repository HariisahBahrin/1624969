<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin_addproducts.aspx.cs" Inherits="WPD_CollectorsDen.admin.admin_addproducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Literal ID="LitProductAddedResult" runat="server"></asp:Literal>
    <asp:Literal ID="LitProductUpdateResult" runat="server"></asp:Literal>
    <asp:Literal ID="LitProductDeleteResult" runat="server"></asp:Literal>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="AdminAddProducts_DataSource">
       
         <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="StatusID" HeaderText="StatusID" SortExpression="StatusID" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
            <asp:BoundField DataField="Product_Description" HeaderText="Product_Description" SortExpression="Product_Description" />
             <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="UploadImage.aspx?id={0}" InsertVisible="False" Text="Image Upload" />
        </Columns>
        
    </asp:GridView>
    
    <asp:SqlDataSource ID="AdminAddProducts_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CollectorsDenConnection %>" 
        DeleteCommand="DELETE FROM [Products_tbl] WHERE [ProductID] = @ProductID" 
        InsertCommand="INSERT INTO [Products_tbl] ([ProductID], [Product_Name], [Price], [StatusID], [CategoryID], [Product_Description]) VALUES (@ProductID, @Product_Name, @Price, @StatusID, @CategoryID, @Product_Description)" 
        SelectCommand="SELECT [ProductID], [Product_Name], [Price], [StatusID], [CategoryID], [Product_Description] FROM [Products_tbl]" UpdateCommand="UPDATE [Products_tbl] SET [Product_Name] = @Product_Name, [Price] = @Price, [StatusID] = @StatusID, [CategoryID] = @CategoryID, [Product_Description] = @Product_Description WHERE [ProductID] = @ProductID">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductID" Type="String" />
            <asp:Parameter Name="Product_Name" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="StatusID" Type="String" />
            <asp:Parameter Name="CategoryID" Type="String" />
            <asp:Parameter Name="Product_Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Product_Name" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="StatusID" Type="String" />
            <asp:Parameter Name="CategoryID" Type="String" />
            <asp:Parameter Name="Product_Description" Type="String" />
            <asp:Parameter Name="ProductID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="AdminAddProducts_DataSource" DefaultMode="Insert" Width="435px" OnPageIndexChanging="FormView1_PageIndexChanging">
        <EditItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
             <asp:RequiredFieldValidator ID="EditreqProductIDLabel1" runat="server" ControlToValidate="ProductIDLabel1" ForeColor="Red" ErrorMessage="Invalid Product ID." ValidationExpression="{FG}+[0-999]"></asp:RequiredFieldValidator>
            <br />
            Product_Name:
            <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <asp:RegularExpressionValidator ID="EditreqPrice" runat="server" ControlToValidate="PriceTextBox" ErrorMessage="Invalid price" ForeColor="Red" ValidationExpression="^\d"></asp:RegularExpressionValidator>
            <br />
            StatusID:
            <asp:TextBox ID="StatusIDTextBox" runat="server" Text='<%# Bind("StatusID") %>' />
            <asp:RegularExpressionValidator ID="EditreqStatus" runat="server" ControlToValidate="StatusIDTextBox" ErrorMessage="Invalid status" ForeColor="Red" ValidationExpression="{INSTOCK, NO-STOCK}"></asp:RegularExpressionValidator>
            <br />
            CategoryID:
            <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' />
            <asp:RegularExpressionValidator ID="EditCategory" runat="server" ControlToValidate="CategoryIDTextBox" ErrorMessage="Invalid category" ForeColor="Red" ValidationExpression="{FemFig, MaleFig}"></asp:RegularExpressionValidator>
            <br />
            Product_Description:
            <asp:TextBox ID="Product_DescriptionTextBox" runat="server" Text='<%# Bind("Product_Description") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ProductID:
            <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
            <asp:RequiredFieldValidator ID="AddreqProductIDLabel1" runat="server" ControlToValidate="ProductIDTextBox" ForeColor="Red" ErrorMessage="Invalid Product ID." ValidationExpression="{FG}?[0-999]"></asp:RequiredFieldValidator>
            <br />
            Product_Name:
            <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <asp:RegularExpressionValidator ID="AddreqPrice" runat="server" ControlToValidate="PriceTextBox" ErrorMessage="Invalid price" ForeColor="Red" ValidationExpression="^\d"></asp:RegularExpressionValidator>
            <br />
            StatusID:
            <asp:TextBox ID="StatusIDTextBox" runat="server" Text='<%# Bind("StatusID") %>' />
            <asp:RegularExpressionValidator ID="AddreqStatus" runat="server" ControlToValidate="StatusIDTextBox" ErrorMessage="Invalid status" ForeColor="Red" ValidationExpression="{INSTOCK, NO-STOCK}"></asp:RegularExpressionValidator>
            <br />
            CategoryID:
            <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' />
            <asp:RegularExpressionValidator ID="AddCategory" runat="server" ControlToValidate="CategoryIDTextBox" ErrorMessage="Invalid category" ForeColor="Red" ValidationExpression="{FemFig, MaleFig}"></asp:RegularExpressionValidator>
            <br />
            Product_Description:
            <asp:TextBox ID="Product_DescriptionTextBox" runat="server" Text='<%# Bind("Product_Description") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
            <asp:RequiredFieldValidator ID="reqProductIDLabel1" runat="server" ControlToValidate="ProductIDLabel" ForeColor="Red" ErrorMessage="Invalid Product ID." ValidationExpression="{FG}+[0-999]"></asp:RequiredFieldValidator>
            <br />
            Product_Name:
            <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Bind("Product_Name") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
            <asp:RegularExpressionValidator ID="reqPrice" runat="server" ControlToValidate="PriceTextBox" ErrorMessage="Invalid price" ForeColor="Red" ValidationExpression="^\d"></asp:RegularExpressionValidator>
            <br />
            StatusID:
            <asp:Label ID="StatusIDLabel" runat="server" Text='<%# Bind("StatusID") %>' />
            <asp:RegularExpressionValidator ID="reqStatus" runat="server" ControlToValidate="StatusIDTextBox" ErrorMessage="Invalid status" ForeColor="Red" ValidationExpression="{INSTOCK, NO-STOCK}"></asp:RegularExpressionValidator>
            <br />
            CategoryID:
            <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Bind("CategoryID") %>' />
            <asp:RegularExpressionValidator ID="reqCategory" runat="server" ControlToValidate="CategoryIDTextBox" ErrorMessage="Invalid category" ForeColor="Red" ValidationExpression="{FemFig, MaleFig}"></asp:RegularExpressionValidator>
            <br />
            Product_Description:
            <asp:Label ID="Product_DescriptionLabel" runat="server" Text='<%# Bind("Product_Description") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>

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
