<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="WillProject2019.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <p id="Product_id">
         Category Name
        <asp:TextBox ID="category_name" runat="server" Width="95px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="product_id" runat="server" Width="95px"></asp:TextBox>
    </p>
    <p>
        Product Name &nbsp; <asp:TextBox ID="product_name" runat="server" Width="95px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Available Quantity&nbsp;&nbsp;<asp:TextBox ID="Available_quantity" runat="server" Width="97px"></asp:TextBox>
    </p>
    <p>
        Sales Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="sales_price" runat="server" Width="95px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="Add" Width="81px" OnClick="Button1_Click" BackColor="#751516" BorderColor="#751516" ForeColor="White" />
    </p>
    <p>
        &nbsp;</p>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="category_name" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" AllowSorting="True" Height="36px" Width="612px">
         <Columns>
             <asp:BoundField DataField="product_id" HeaderText="product_id" SortExpression="product_id" />
             <asp:BoundField DataField="category_name" HeaderText="category_name" ReadOnly="True" SortExpression="category_name" />
             <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
             <asp:BoundField DataField="sales_price" HeaderText="sales_price" SortExpression="sales_price" />
             <asp:BoundField DataField="Available_quantity" HeaderText="Available_quantity" SortExpression="Available_quantity" />
             <asp:ButtonField HeaderText="Edit" Text="Edit" />
             <asp:ButtonField CommandName="Delete" HeaderText="Delete" Text="Delete" />
         </Columns>
     </asp:GridView>
    <p>
        &nbsp;</p>
</asp:Content>
