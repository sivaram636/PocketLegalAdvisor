<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailsPage.aspx.cs"  Inherits="WebApplication1.DetailsPage" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div>
        <table>
            <tr>
                <td><asp:ListBox ID="lstRules" runat="server" OnSelectedIndexChanged="lstRules_SelectedIndexChanged" AutoPostBack="True" CausesValidation="True" Height="393px" Width="409px" Font-Names="Verdana" Font-Size="14px"></asp:ListBox></td>
                <td><asp:ListBox ID="lstDescription" runat="server" Height="393px" Width="626px" Font-Names="Verdana" Font-Size="14px"></asp:ListBox></td>
            </tr>
        </table>       
        
    </div> 
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
