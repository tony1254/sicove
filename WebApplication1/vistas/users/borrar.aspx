<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="borrar.aspx.vb" Inherits="WebApplication1.borrar" %>
<%@ Import Namespace="WebApplication1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource2" CellSpacing="2" ForeColor="Black" Width="655px">
                    <Columns>
                        <asp:BoundField DataField="Column1" HeaderText="Column1" SortExpression="Column1" ReadOnly="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sicoveConnectionString %>" SelectCommand="DELETE FROM usuario
FROM            usuario CROSS JOIN
                         direccionNegocio CROSS JOIN
                         datoReferencia
WHERE        (usuario.Id_usuario = @idusuario)
DELETE FROM direccionNegocio 
FROM            usuario CROSS JOIN
                         direccionNegocio CROSS JOIN
                         datoReferencia
WHERE        (usuario.Id_usuario = @idusuario)
DELETE FROM datoReferencia
FROM            usuario CROSS JOIN
                         direccionNegocio CROSS JOIN
                         datoReferencia
WHERE        (usuario.Id_usuario = @idusuario)
select 'borro'">
                    <SelectParameters>
                        <asp:RouteParameter Name="idusuario" RouteKey="id" />
                    </SelectParameters>
                </asp:SqlDataSource>
    <%
        
        'pruebita(Page.RouteData.Values("id").ToString, "tony")
        Response.Redirect("\vistas/elimino/" & Page.RouteData.Values("id").ToString)
        %>
</asp:Content>
