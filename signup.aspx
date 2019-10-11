<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WillProject2019.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a style="margin-top:50px;">
                <asp:Label ID="Label1" runat="server" Text="Label">USER NAME</asp:Label><br>
                <asp:TextBox ID="username" runat="server" Width="176px" autocomplete="off"></asp:TextBox> 
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="  Enter username " BorderColor="Red" ForeColor="Red"></asp:RequiredFieldValidator>
<br></a><br>
                <a>
                <asp:Label ID="Label2"  Text="Label"  runat="server">PASSWORD </asp:Label><br>
                <asp:TextBox ID="password" runat="server" Width="174px" style="margin-bottom: 0px" TextMode="Password"></asp:TextBox> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="Must fill password" ForeColor="Red"></asp:RequiredFieldValidator>
    <br>
    <br></a>
                <a>
                 <asp:Label ID="Label3"  Text="Label" runat="server">CONFIRM PASSWORD </asp:Label><br>
                <asp:TextBox ID="confirmpassword" runat="server" Width="175px" TextMode="Password"></asp:TextBox> 
<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirmpassword" ErrorMessage="Password must be same" ForeColor="Red"></asp:CompareValidator>
<br><br>                 
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl]">
                        </asp:SqlDataSource>

                </a>
   
   <BotDetect:WebFormsCaptcha ID="CaptchaBox" runat="server" />
    <asp:TextBox ID="TxtCaptcha" runat="server"  autocomplete="off"></asp:TextBox><br /><br />
   <asp:Button ID="Button1" runat="server" Text="Signup" OnClick="Button1_Click1" /> <br />

    <asp:Label ID="LabelMsg" runat="server" ></asp:Label>

  

</asp:Content>
