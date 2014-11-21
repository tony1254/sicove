<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="mostrar.aspx.vb" Inherits="WebApplication1.mostrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div  class="row"> <!--fila dentro del cuerpo para alinear texto imaginaria  -->
        
          <div class="col-md-10 col-md-offset-1">
      <!-- INICIO NOMBRE Seccion -->    


 



<!-- otra seccion -->
         <!-- encabesado -->  
<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title text-center">USUARIO<spam class="glyphicon glyphicon-user"></h3>
  </div>
  <div class="panel-body">
<!-- otra seccion -->


    
    
    
    <div class="row">


            <div class="col-md-6 col-md-offset-2 text-center"> 
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource3" CellSpacing="2" ForeColor="Black" Width="499px">
                    <Columns>
                        <asp:BoundField DataField="unombre" HeaderText="unombre" SortExpression="unombre" />
                        <asp:BoundField DataField="rol" HeaderText="rol" SortExpression="rol" />
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
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sicoveConnectionString %>" SelectCommand="SELECT nit, nombre, direccion FROM direccionNegocio AS b WHERE (Id_usuario = @idusuario)">
                    <SelectParameters>
                        <asp:RouteParameter Name="idusuario" RouteKey="id" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
         
        </div>
       </div>
         
        </div>

                 <!-- encabesado -->  
<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title text-center">Mostrar USUARIO<spam class="glyphicon glyphicon-user"></h3>
  </div>
  <div class="panel-body">
      <!-- otra seccion -->
         <!-- encabesado -->  
<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title text-center">Direccion de Negocio<spam class="glyphicon glyphicon-user"></h3>
  </div>
  <div class="panel-body">
<!-- otra seccion -->


    
    
    
    <div class="row">


            <div class="col-md-6 col-md-offset-2 text-center"> 
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" CellSpacing="2" ForeColor="Black" Width="499px">
                    <Columns>
                        <asp:BoundField DataField="nit" HeaderText="nit" SortExpression="nit" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
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
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:sicoveConnectionString %>" SelectCommand="SELECT unombre, rol FROM usuario AS a WHERE (Id_usuario = @idusuario)">
                    <SelectParameters>
                        <asp:RouteParameter Name="idusuario" RouteKey="id" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
         
        </div>
       </div>
         
        </div>

      &nbsp;<!-- encabesado --><div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title text-center">Datos de Referencia USUARIO<spam class="glyphicon glyphicon-user"></h3>
  </div>
  <div class="panel-body">
<!-- otra seccion -->


     

        <div class="row">
        <div class="col-md-6 col-md-offset-1 text-center"> 
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource2" CellSpacing="2" ForeColor="Black" Width="655px">
                    <Columns>
                        <asp:BoundField DataField="dpi" HeaderText="dpi" SortExpression="dpi" />
                        <asp:BoundField DataField="profesion" HeaderText="profesion" SortExpression="profesion" />
                        <asp:BoundField DataField="domicilio" HeaderText="domicilio" SortExpression="domicilio" />
                        <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                        <asp:BoundField DataField="celular" HeaderText="celular" SortExpression="celular" />
                        <asp:BoundField DataField="numeroContrato" HeaderText="numeroContrato" SortExpression="numeroContrato" />
                        <asp:BoundField DataField="sueldo" HeaderText="sueldo" SortExpression="sueldo" />
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
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sicoveConnectionString %>" SelectCommand="SELECT dpi, profesion, domicilio, telefono, celular, numeroContrato, sueldo FROM datoReferencia WHERE (NOT (domicilio IS NULL)) AND (NOT (telefono IS NULL)) AND (NOT (celular IS NULL)) AND (NOT (numeroContrato IS NULL)) AND (Id_usuario = @idusuario)">
                    <SelectParameters>
                        <asp:RouteParameter Name="idusuario" RouteKey="id" />
                    </SelectParameters>
                </asp:SqlDataSource>
             </div>
         </div>
        <a id="boton" runat="server" href="\vistas/users/0" class="btn btn-info btn-block">Volver <spam class="glyphicon glyphicon-arrow-left"></spam></a>
               
            </div>
         </div>
            </div>
         </div>
            </div>
         </div>

</asp:Content>
