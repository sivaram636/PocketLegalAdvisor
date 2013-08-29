<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2></h2>
    </hgroup>

    <article>
        <p>        
           This application is mainly focussing on providing basic Domestic laws of the consitution to the common citizen.
        </p>

       
    </article>

    <aside>
        <h3>Aside Title</h3>
        <p>        
           Contributors:
        </p>
        <ul>
            
            <li><a runat="server" href="~/">Santhosh</a></li>
            <li><a runat="server" href="~/About.aspx">Rajesh Kumar</a></li>
            <li><a runat="server" href="~/Contact.aspx"></a></li>
        </ul>
    </aside>
</asp:Content>