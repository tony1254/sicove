<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="login.aspx.vb" Inherits="WebApplication1.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
 

 
.login {
  max-width: 330px;
  padding: 15px;
  margin: 0 auto;
 
}

#sha{
  max-width: 340px;
    -webkit-box-shadow: 0px 0px 18px 0px rgba(48, 50, 50, 0.48);
    -moz-box-shadow:    0px 0px 18px 0px rgba(48, 50, 50, 0.48);
    box-shadow:         0px 0px 18px 0px rgba(48, 50, 50, 0.48);
    border-radius: 6%;
  }
 #avatar{
width: 96px;
height: 96px;
margin: 0px auto 10px;
display: block;
border-radius: 50%;
 } 
 
</style>
   <%

       If Not (Session("ususario") Is Nothing) Then
           
           %>
           <div class="alert alert-danger alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Error:</strong> no se pudo econtrar su usario o su contraseña es incorrecta.
</div>
       <%
       End If
%>

   <%

       If Not (Session("usuario") Is Nothing) Then
           If Not (Session("usuario") = "") Then
           %>
           <div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Correcto:</strong> Inicio Sesion.
</div>
       <%
           Response.Redirect("\index.aspx")
       End If
       End If
       
%>


   <%  
 If Session("usuario") Is Nothing Then
           %>
    

<div class="alert alert-warning alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Seccion finalizada!!</strong> 
</div>
 

           <%
       End If
%>
       <%
 If Not(Session("usduario") Is Nothing) Then
           %>

<div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  Seccion Iniciada!! Bienvenido <strong>{{ $hola->email;}}</strong> 
  <div style="display: none;">
  {{Redirect::to('/')->with('mensaje_registro', 'Iniciar Secion')->with('color', 'alert alert-danger')}}
  </div>
</div>
           
           <%
       End If
%>
   


          <%

              If Session("usuario") Is Nothing Or Session("usuario") = "" Then
                  
           %>

  <div class="container well" id="sha">
    <div class="row">
          <div class="col-xs-12">
            <img src="\recursos/img/avatar.png" class="img-responsive" id="avatar"/>
          </div>
    </div>
 
    <form class="login" action="\users/login" method="POST">
        <div class="form-group">
          <span class="input-group-addon">
                          <i class="glyphicon glyphicon-user"></i>
                        </span> 
          <input ID= "text1" runat="server" type= "text" class="form-control" placeholder="Username" name="email" required autofocus>
        </div>
        
 
        <div class="form-group">
          <span class="input-group-addon">
                          <i class="glyphicon glyphicon-lock"></i>
                        </span>
          <input  ID= "text2" runat="server" value="" type="password" class="form-control" placeholder="Contraseña" name="password" required>
        </div>
       
       
        <asp:LinkButton ID="Button11" runat="server" Text="<span class='glyphicon glyphicon-star'></span>iniciar sesion" Class="btn btn-lg btn-primary btn-block" />
        
       

        <div class="checkbox">
              
          <label class="checkbox">
                
            </label>
               <p class="help-block"><a href="#">¿No puedes acceder a tu cuenta?</a></p>
        </div>
 
      </form>
 
    
    
  </div>
           
           <%
           
       End If
           
%>
   




</asp:Content>
