<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="WebForm3.aspx.vb" Inherits="WebApplication1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
    <div>
         <button ID="web2" runat="server" Text="Button" type="button" class="btn btn-primary btn-lg">
                  <span class="glyphicon glyphicon-star"><asp:Label ID="Label3" runat="server" Text="ejemplo"></asp:Label></span> 
                </button>
    </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </asp:Content>