<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="form3.aspx.vb" Inherits="WebApplication1.form3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <br />
    <br />

    <br />
      <div  class="row"> <!--fila dentro del cuerpo para alinear texto imaginaria  -->
        
          <div class="col-md-10 col-md-offset-1">
   <!-- Encabezado titulo-->
<div class="panel panel-success"><!-- ENCABEZADO color-->  
  <div class="panel-heading">
    <h3 class="panel-title text-center">LISTADO DE PRODUCTO <spam class="glyphicon glyphicon-edit"></spam></h3>
      <!-- ENCABEZADO-->           
        
  </div>
  <div class="panel-body">
                 <div class="input-group"> <!--ETIQUE  BUSCARDOR BOTON-->
                <input ID= "text1" runat="server" type= "text" class="form-control" placeholder="buscar producto" name="email" required autofocus>
                <!-- BOTON buscar lupa-->
                <asp:LinkButton ID="LinkButton1" runat="server" Text="<span class='glyphicon glyphicon-search'></span>" Class="btn btn-lg btn-success  btn-block input-group-addon" />     
            </div>
            <br /> <!-- salto-->
 

            <br /> <!-- salto-->
     <!-- BOTON crear-->
    <asp:LinkButton ID="Button1" runat="server" Text="<span class='glyphicon glyphicon-usd'></span>CONFIRMAR PAGO" Class="btn btn-lg btn-success btn-block" />
        </div> 
          </div> 
</div>
     </div>   
    
      </div> 
    </div> 

</asp:Content>