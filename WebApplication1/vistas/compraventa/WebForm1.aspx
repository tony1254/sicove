<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="WebForm1.aspx.vb" Inherits="WebApplication1.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br />
    <br />

    <br />
   <!-- Encabezado titulo-->
<div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title text-center">CREAR COMPRA -VENTA <spam class="glyphicon glyphicon-shopping-cart"></spam></h3>
        
  </div>
  <div class="panel-body">

      <div class="row"> <!--fila dentro del cuerpo para alinear texto imaginaria  -->

        <div class="col-md-6 col-md-offset-3">

            <div class="input-group"> <!--ETIQUE  BUSCARDOR BOTON-->
                <input ID= "text1" runat="server" type= "text" class="form-control" placeholder="id  usuario" name="email" required autofocus>
                <!-- BOTON buscar lupa-->
                <asp:LinkButton ID="LinkButton1" runat="server" Text="<span class='glyphicon glyphicon-search'></span>" Class="btn btn-lg btn-primary  btn-block input-group-addon" />     
            </div>
            <br /> <!-- salto-->
            <div class="checkbox">
<div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> activar si es compra
          </label>
        </div>
</div>

     <!-- BOTON crear-->
    <asp:LinkButton ID="Buttoncrearcompraventa" runat="server" Text="<span class='glyphicon glyphicon-plus'></span>Crear" Class="btn btn-lg btn-success btn-block" />
          
      </div>
    </div>
       
    </div>
    </div>
      
</asp:Content>
