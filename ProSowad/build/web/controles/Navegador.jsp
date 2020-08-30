<%-- 
    Document   : Navegador
    Created on : 12/06/2020, 07:42:47 PM
    Author     : Mia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../css/nav.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>

        <div class="navbar navbar-light" style="background-color: #ffffff;">
            <nav class="navbar navbar-expand-lg  container">
                <a class="navbar-brand" href="principal.jsp"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
      
    <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
        <a class="navbar-brand" href="principal.jsp"> <img src="img\logooo.png" alt="logo" height="60px"></a>
         </li>
      <li class="nav-item active" >
          <a class="nav-link"  href="principal.jsp"><h3>INICIO</h3></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Carrito.jsp"><h3>CARRITO</h3></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Nosotros.jsp"><h3>NOSOTROS </h3></a>
      </li>
      <button class="btn btn-outline-success" type="button" onclick= "self.location.href = 'loginweb.jsp'" style="margin: 4px;/* dar espacio entre botones */
width: 150px;
height: 40px;">Iniciar Sesion</button>
      <button class="btn btn-outline-success" type="button" onclick= "self.location.href = 'RegisUsu.jsp'" style="margin: 4px;/* dar espacio entre botones */
width: 150px;
height: 40px;">Registrar</button>
    </ul>
  </div>
</nav>
</div>
<hr size="1" />
</html>
