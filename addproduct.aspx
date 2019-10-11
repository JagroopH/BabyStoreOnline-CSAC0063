<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="WillProject2019.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <p>
        &nbsp;Category&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="95px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Width="95px"></asp:TextBox>
    </p>
    <p>
        Product ID&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="95px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Width="97px"></asp:TextBox>
    </p>
    <p>
        Sales Price&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="95px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Available Quantity&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" Width="96px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="Add" Width="81px" OnClick="Button1_Click" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="category_name" DataSourceID="SqlDataSource1" Width="457px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="product_id" HeaderText="product_id" SortExpression="product_id" />
                <asp:BoundField DataField="category_name" HeaderText="category_name" ReadOnly="True" SortExpression="category_name" />
                <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                <asp:BoundField DataField="sales_price" HeaderText="sales_price" SortExpression="sales_price" />
                <asp:BoundField DataField="Available_quantity" HeaderText="Available_quantity" SortExpression="Available_quantity" />
                <asp:ButtonField HeaderText="Edit" ImageUrl="~/edit.png" Text="Edit" />
                <asp:ButtonField HeaderText="Delete" ImageUrl="~/trash.png" Text="Delete" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
