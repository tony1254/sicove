<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="form.aspx.vb" Inherits="WebApplication1.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container well" id="sha2">
    <!-- Encabezado-->
<div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title text-center">Descripcion <spam class="glyphicon glyphicon-paperclip"></h3>
        
  </div>
  <div class="panel-body">

  <!-- otra seccion -->
        <div class="col-md-10 col-md-offset-1"> 
        <textarea  name="descripcion" type="text" class="form-control" rows="3" placeholder="Redacte una descripcion de ser nesesario" ></textarea>
      </div>
       </div>
        </div> 
    
    <!-- INICIO ASIGNACION seccion -->
<!-- Encabezado-->
<div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title text-center">Asignacion <spam class="glyphicon glyphicon-pushpin"></h3>
  </div>
  <div class="panel-body">

  <!-- otra seccion -->


<div class="col-md-100 col-md-offset-2">
      <div class="col-md-5"> Nombre
        <input type="text" class="form-control" placeholder="Nombre"   name="asignado"  data-minlength="2"disabled Value="@yield('vnombre')" >
      </div>
    <div class="col-md-5"> Area
          <input type="text" class="form-control" placeholder="Area"  name="area" data-minlength="2" @yield('area') Value="@yield('varea')" >
    </div>
    </div>
</div>
</div>
<!-- FIN ASIGNACION seccion -->



    
        
 <!-- INICIO CCC seccion -->
  
 <!-- Titulo -->
<div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title text-center">CCC <spam class="glyphicon glyphicon-folder-close"></h3>
  </div>
  <div class="panel-body">
   
<div class="col-md-8 col-md-offset-3">

    <div class="col-md-2"> Departamento
  
    <input type="text" class="form-control" placeholder="00" maxlength="2"  name="departamento"  data-minlength="2" pattern="[0-1]{1}[0-7]{1}" required autofocus>

        
        </div>
    <div class="col-md-2"> Municipio
  
          <input type="text" class="form-control" placeholder="00" maxlength="2" name="municipio" data-minlength="2" pattern="[0-1]{1}[0-4]{1}" required>
  
        </div>
    <div class="col-md-2">  Poligono
  
          <input type="text" class="form-control" placeholder="00" maxlength="2" name="poligono" data-minlength="2" pattern="[0-9]{1}[0-9]{1}" required>
  
        </div>
    <div class="col-md-2">  Predio
      
    
          <input type="text" class="form-control" placeholder="00000" maxlength="5" name="predio" data-minlength="5" pattern="[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}" required>
      </div> 

</div>    
    
   
   
  </div>
</div>

 <!-- FIn CCC seccion -->

    <!-- INICIO NOMBRE Seccion -->    
<!-- encabesado -->  
<div class="panel panel-warning">
  <div class="panel-heading">
    <h3 class="panel-title text-center">Titular <spam class="glyphicon glyphicon-user"></h3>
  </div>
  <div class="panel-body">
<!-- otra seccion -->
<div class="col-md-100 col-md-offset-2">

        
    <div class="col-md-3"> Primer Nombre
  
    <input type="text" class="form-control" placeholder="Primer Nombre"   name="nombre"  data-minlength="2" required>

        
        </div>
    <div class="col-md-3"> Segundo Nombre
  
          <input type="text" class="form-control" placeholder="Segundo Nombre"  name="snombre" data-minlength="2" >
  
        </div>
    <div class="col-md-3">  Tercer Nombre
  
          <input type="text" class="form-control" placeholder="Tercer Nombre"  name="tnombre" data-minlength="2" >
  
        </div>
        <br/>
<br/>
<br/>



    <div class="col-md-3"> Primer Apellido
  
    <input type="text" class="form-control" placeholder="Primer Apellido"   name="apellido"  data-minlength="2"  >

        
        </div>
    <div class="col-md-3"> Segundo Apellido
  
          <input type="text" class="form-control" placeholder="Segundo Apellido"  name="sapellido" data-minlength="2" >
  
        </div>
    <div class="col-md-3">  Apellido de Casada
  
          <input type="text" class="form-control" placeholder="Apellido de Casada"  name="tapellido" data-minlength="2" >
  
        </div>
</div>
  </div>
</div>

<!-- INICIO NOMBRE Seccion -->    

    <!-- INICIO UBICACION seccion -->
<!-- Encabezado-->
<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title text-center">Ubicacion <spam class="glyphicon glyphicon-map-marker"></h3>
  </div>
  <div class="panel-body">

  <!-- otra seccion -->
<div class="col-md-100 col-md-offset-1">

        
    <div class="col-md-3"> Estante
  
    <input type="text" class="form-control" placeholder="Estante"   name="estante"  data-minlength="2"  >

        
        </div>
    <div class="col-md-3"> Fila
  
          <input type="text" class="form-control" placeholder="Fila"  name="fila" data-minlength="2" >
  
        </div>
    <div class="col-md-3">  Columna
  
          <input type="text" class="form-control" placeholder="Columna"  name="columna" data-minlength="2" >
  
        </div>
         <div class="col-md-3"> Paquete
  
    <input type="text" class="form-control" placeholder="Paquete"   name="paquete"  data-minlength="2"  >

        
        </div>
</div>
</div>
</div>
<!-- FIN UBICACION seccion -->


    <!-- Fin del sha-->
    </div>
</asp:Content>
