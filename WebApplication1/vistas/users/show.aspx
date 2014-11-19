<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="show.aspx.vb" Inherits="WebApplication1.show" %>
<%@ Import Namespace="WebApplication1" %>

<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


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
			<a href="{{ route('expedientes.show', $expediente->id) }}" class="btn btn-info"><spam class="glyphicon glyphicon-folder-open"></a>
			<a href="{{ route('expedientes.edit', $expediente->id) }}" class="btn btn-warning"><spam class="glyphicon glyphicon-edit"></a>
		</td>
		<td>

		<a href="{{ route('expedientes.show', $expediente->id) }}" class="btn btn-danger"><spam class="glyphicon glyphicon-trash"></a>
			
				</td>
		</tr>
		 <%
		Next
	 %>	
</table>
              </div>
              </div>
  </div> 
    </div>
              </div>
         </div>   
</asp:Content>
