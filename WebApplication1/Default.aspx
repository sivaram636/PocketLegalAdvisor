<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">                
                <h2>Pocket Legal Advisor</h2>
            </hgroup>
            <p>
                If you are in need to consult any legal advisor, here is our application to help you.</p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:TextBox ID="txtSearch" runat="server" Font-Names="Verdana" Font-Size="14px"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" Font-Names="Verdana" Font-Size="14px" /><br />
    use appropriate keywords like License,Document, etc...
</asp:Content>
