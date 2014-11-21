<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="crear3.aspx.vb" Inherits="WebApplication1.crear3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div  class="row"> <!--fila dentro del cuerpo para alinear texto imaginaria  -->
        
          <div class="col-md-10 col-md-offset-1">
      <!-- INICIO NOMBRE Seccion -->    
<!-- encabesado -->  
<div class="panel panel-warning">
  <div class="panel-heading">
    <h3 class="panel-title text-center">Creando Datos Personales <spam class="glyphicon glyphicon-user"></h3>
  </div>
  <div class="panel-body">
<!-- otra seccion -->
      <div class="row">
<div class="col-md-100 col-md-offset-2">

        
    <div class="col-md-3"> DPI
  
    <input ID= "textuname" runat="server" type="text" class="form-control" placeholder="0000-00000-0000"   name="username"  data-minlength="2" required>

        
        </div>
    <div class="col-md-3"> Profecion
  
          <input ID= "textpass" runat="server" type="text" class="form-control" placeholder="Profecion"  name="password" data-minlength="2" >
  
        </div>
    <div class="col-md-3"> Domicilio
  
          <input ID= "text1" runat="server" type="text" class="form-control" placeholder="Domicilio"  name="password" data-minlength="2" >
  
        </div>
    <br />
    <br />
    <br />
        <div class="col-md-3"> telefono
  
    <input ID= "text2" runat="server" type="text" class="form-control" placeholder="telefono"   name="username"  data-minlength="2" required>

        
        </div>
    <div class="col-md-3"> celular
  
          <input ID= "text3" runat="server" type="text" class="form-control" placeholder="celular"  name="password" data-minlength="2" >
  
        </div>
    <div class="col-md-3"> Numero de Contrato
  
          <input ID= "text4" runat="server" type="text" class="form-control" placeholder="Numero de Contrato"  name="password" data-minlength="2" >
  
        </div>
    <br />
    <br />
    <br />
        <div class="col-md-3 col-md-offset-3"> Salario
  
          <input ID= "text5" runat="server" type="text" class="form-control" placeholder="Salario"  name="password" data-minlength="2" >
  
        </div>
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
