<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="form4.aspx.vb" Inherits="WebApplication1.form4" %>

<%@ Import Namespace="WebApplication1" %>

<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <br />
    <br />

    <br />
      <div  class="row"> <!--fila dentro del cuerpo para alinear texto imaginaria  -->
        
          <div class="col-md-10 col-md-offset-1">
   <!-- Encabezado titulo-->
<div class="panel panel-primary"><!-- ENCABEZADO color-->  
  <div class="panel-heading">
    <h3 class="panel-title text-center"> DETALLE DE FACTURACION <spam class="glyphicon glyphicon-user"></spam></h3>
      <!-- ENCABEZADO-->           
        
  </div>
  <div class="panel-body">
      
      <!--fila dentro del cuerpo para alinear formulario y textor  -->
  <div  class="row"> <!--fila dentro del cuerpo para alinear texto imaginaria  -->
        
          <div class="col-md-6 col-md-offset-3">
         <!--input INGREAR TEXTO -->
               No
                    <input ID= "text1" runat="server" type= "text" class="form-control" placeholder="No." name="email" required autofocus>
            <br/>

             Nombre
                <input ID= "text2" runat="server" type= "text" class="form-control" placeholder="Nombre" name="email" required >
                <br/>
              Nit

                <input ID= "text3" runat="server" type= "text" class="form-control" placeholder="nit" name="email" required>
                 <br/>
         
              Fecha
                <input ID= "text4" runat="server" type= "text" class="form-control" placeholder="fecha" name="email" required >
                <br/>
 </div>
       </div>



  <div class="row"> <!--fila dentro del cuerpo para alinear texto imaginaria  -->
        
          <div class="col-md-6 col-md-offset-3">

             


            <br /> <!-- salto-->
     <!-- BOTON crear-->
    <asp:LinkButton ID="Button1" runat="server" Text="<span class='glyphicon glyphicon-plus'></span>Agregar Producto" Class="btn btn-lg btn-primary btn-block" />
        </div> 
          </div> 
</div>
     </div>   
    
      </div> 
    </div> 

</asp:Content>
