 <%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WillProject2019.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:Label ID="Label3" runat="server" Text="User Name" ForeColor="#999999"></asp:Label><br>
      <asp:TextBox ID="name" runat="server"  autocomplete="off"></asp:TextBox>
      <br />
<br>
    <asp:Label ID="Label1" runat="server" Text="Password" ForeColor="#999999"></asp:Label><br>
    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
      <br />
      <br><br>
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Width="63px" />
      &nbsp;&nbsp;
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Signup" Width="59px" />
&nbsp;<br />
</asp:Content>
