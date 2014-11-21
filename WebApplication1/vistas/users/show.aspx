<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="show.aspx.vb" Inherits="WebApplication1.show" %>

<%@ Import Namespace="System.Data.SqlTypes" %>
<%@ Import Namespace="WebApplication1" %>

<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
     <%
If(Not(Page.RouteData.Values("eliminado") Is Nothing)) then
         
         If (Not (Page.RouteData.Values("eliminado") Is Nothing and Page.RouteData.Values("eliminado").ToString = "0")) Then
           
           %>
           <div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>correcto:</strong> elimino USUARIO # <%Response.Write(Page.RouteData.Values("eliminado").ToString)%> .
</div>
       <%
       End If
       
   End If
       
%>

     <%
         
         If (Not (Page.RouteData.Values("repetido") Is Nothing)) Then
         
           
           %>
           <div class="alert alert-danger alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>USUARIO REPETIDO</strong> .
</div>
       <%
       
   End If
       
%>

     <div  class="row"> <!--fila dentro del cuerpo para alinear texto imaginaria  -->
        
          <div class="col-md-10 col-md-offset-1">
   <!-- Encabezado titulo-->
<div class="panel panel-primary"><!-- ENCABEZADO color-->  
  <div class="panel-heading">
    <h3 class="panel-title text-center"> listado de usuario <spam class="glyphicon glyphicon-user"></spam></h3>
      <!-- ENCABEZADO-->           
        
  </div>
  <div class="panel-body">

     <div class="row"> <!--fila dentro del cuerpo para alinear texto imaginaria  -->
        
          <div class="col-md-6 col-md-offset-3">
<!--dibujamos una tabla  -->
<table class="table table-bordered">
	<tr><!--dibujamos una fila tr = row =  fila -->
			<th class="">id </th><!--dibujamos una Columnas th = colummna -->
			<th>nombre</th>	
			<th>pass</th>
	
			<th class="text-right">Ver / Editar</th>
			
			<th>Eliminar</th>
		</tr>
    <%
        
   mostarusuario("tony", "tony")
 
        For Each drow As DataRow In ds.Tables(0).Rows
            
	 %>	
    <tr>
		<td>
        <%        Response.Write(drow.Item(0))
            
	 %>	
		</td>
		<td> <%        Response.Write(drow.Item(1))
            
	 %>	</td>
		<td>
             <%        Response.Write(drow.Item(2))
            
	 %>	
		</td>
	
		

		<td class="text-right">
			<% 
			    boton.HRef = ("\vistas/ver/" & drow.Item(0))
			    %>
            <a id="boton" runat="server" href="{{ route('expedientes.show', $expediente->id) }}" class="btn btn-info"><spam class="glyphicon glyphicon-folder-open"></a>
            <% 
			    boton2.HRef = ("\vistas/editar/" & drow.Item(0))
			    %>
			<a id="boton2" runat="server" href="{{ route('expedientes.edit', $expediente->id) }}" class="btn btn-warning"><spam class="glyphicon glyphicon-edit"></a>
      
             
           
		</td>
		<td>

		       <% 
			    boton3.HRef = ("\vistas/borrar/" & drow.Item(0))
			    %>
			<a id="boton3" runat="server" href="{{ route('expedientes.edit', $expediente->id) }}" class="btn btn-danger"><spam class="glyphicon glyphicon-trash"></a>
      

		
				</td>
		</tr>
    <%
                        '    Response.Write("CommandArgument="""&drow.Item(0)&"""")
                          
                        
                         %>
		 <%
		Next
	 %>	
</table>

            <asp:LinkButton ID="ButtonNuevos" runat="server" Text="Nuevo  <span class='glyphicon glyphicon-plus'></span>" Class="btn btn-lg btn-success " />
                 

                
      <br />

      <asp:Label id="Label1" runat="server"/>
        
       
              </div>
              </div>
  </div> 
    </div>
              </div>
         </div>   
    <script runat="server">

                  Sub userbotonreceptor(sender As Object, e As CommandEventArgs)
                      ' parametro uno = e.CommandName
                      ' paramentro dos= e.CommandArgument
                  
            Label1.Text = "Thank you for visiting our site." & e.CommandArgument & e.CommandName
              
                  End Sub

                </script>
       <%--"<script runat=""server""> Sub userbotonreceptor(sender As Object, e As CommandEventArgs) Label1.Text = ""Thank you for visiting our site."" & e.CommandArgument &  e.CommandName End Sub </script>"--%>
</asp:Content>
