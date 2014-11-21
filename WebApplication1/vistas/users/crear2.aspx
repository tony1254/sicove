<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="crear2.aspx.vb" Inherits="WebApplication1.crear2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%

       If ((Not (Session("mensaje") Is Nothing)) And (Session("mensaje")="malo") ) Then
           
          Response.Redirect("\vistas/users/repetido/1")
       End If
%>


     <%

       If ((Not (Session("mensaje") Is Nothing)) And Not(Session("mensaje")="") ) Then
           
           %>
           <div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>correcto:</strong> usuario # <%Response.Write(Session("mensaje").ToString) %> .
</div>
       <%
       End If
%>

       <div  class="row"> <!--fila dentro del cuerpo para alinear texto imaginaria  -->
        
          <div class="col-md-10 col-md-offset-1">
      <!-- INICIO NOMBRE Seccion -->    
<!-- encabesado -->  
<div class="panel panel-warning">
  <div class="panel-heading">
    <h3 class="panel-title text-center">creando direccion de negocios  <spam class="glyphicon glyphicon-user"></h3>
  </div>
  <div class="panel-body">
<!-- otra seccion -->
      <div class="row">
<div class="col-md-100 col-md-offset-1">
    <%
        If  (Session("mensaje") Is Nothing) Then
            Response.Redirect("\vistas/users/0")
        End If
        textid.Value = Session("mensaje").ToString
        %>
        <div class="col-md-2 col-md-offset-0"> id usuario
         <input ID= "textid" runat="server" type="text" class="form-control" placeholder="000000-0"   name="username"  data-minlength="2" required disabled visible="true">
            </div>
    <br />
    <br />
    <br />
    <div class="col-md-3"> Nit
  
    <input ID= "textnit" runat="server" type="text" class="form-control" placeholder="000000-0"   name="username"  data-minlength="2" required>

        
        </div>
    <div class="col-md-4"> nombre
  
          <input ID= "textnombre" runat="server" type="text" class="form-control" placeholder="nombre nombre apellido apellido"  name="password" data-minlength="2" >
  
        </div>
    <div class="col-md-3"> direccion
  
          <input ID= "textdir" runat="server" type="text" class="form-control" placeholder="direccion"  name="password" data-minlength="2" >
  
        </div>
    
    <br />
    <br />
    <br />
    
    
    <br />

    </div>
    
          <div class="row">
  <div class="col-md-6 col-md-offset-4">
      <div class="btn-group" role="group" aria-label="...">
       <asp:LinkButton ID="Buttonsiguiente" runat="server" Text="Siguiente <span class='glyphicon glyphicon-forward'></span>" Class="btn btn-lg btn-primary " />
          <asp:LinkButton ID="Buttonfinal" runat="server" Text="final <span class='glyphicon glyphicon-step-forward'></span>" Class="btn btn-lg btn-success " />
          </div>
  </div>
</div>
     
</div>
  </div>
</div>
  </div>
</div>
<!-- INICIO NOMBRE Seccion -->    
</asp:Content>
