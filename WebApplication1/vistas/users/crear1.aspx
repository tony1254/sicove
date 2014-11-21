<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="crear1.aspx.vb" Inherits="WebApplication1.crear1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div  class="row"> <!--fila dentro del cuerpo para alinear texto imaginaria  -->
        
          <div class="col-md-10 col-md-offset-1">
     <!-- INICIO NOMBRE Seccion -->    
<!-- encabesado -->  
<div class="panel panel-warning">
  <div class="panel-heading">
    <h3 class="panel-title text-center">Creando Usuario <spam class="glyphicon glyphicon-user"></h3>
  </div>
  <div class="panel-body">
<!-- otra seccion -->
      <div class="row">
<div class="col-md-100 col-md-offset-2">

        
    <div class="col-md-3"> Username
  
    <input ID= "textuname" runat="server" type="text" class="form-control" placeholder="username"   name="username"  data-minlength="2" required>

        
        </div>
    <div class="col-md-3"> Password
  
          <input ID= "textpass" runat="server" type="text" class="form-control" placeholder="password"  name="password" data-minlength="2" >
  
        </div>
    <div class="col-md-3"> Rol
    <select ID= "textrol" runat="server" class="form-control">
  <option value="1">Administrador</option>
  <option value="2">operador</option>
        <option value="3">cliente</option>
        </select>
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
