<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addcategory.aspx.cs" Inherits="WillProject2019.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Add Category"></asp:Label>
    <br />
    <br />
    <br />
    Category Name
    <asp:TextBox ID="category_name" runat="server" Width="115px"></asp:TextBox>
    <br />
    <br />
    Category ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="category_id" runat="server"  Width="115px"></asp:TextBox>
    <br />
    <br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button2" runat="server" Text="Update" Width="65px" />
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Add" Width="65px" />
<br />
<br />
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="category_name" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="category_id" HeaderText="category_id" SortExpression="category_id" />
        <asp:BoundField DataField="category_name" HeaderText="category_name" ReadOnly="True" SortExpression="category_name" />
        <asp:ButtonField HeaderText="Edit" ImageUrl="~/edit.png" Text="Edit" />
        <asp:ButtonField HeaderText="Delete" ImageUrl="~/trash.png" Text="Delete" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
    <br />
</asp:Content>
