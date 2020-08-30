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
        <a class="navbar-brand" href="principal3.jsp"> <img src="img\Nosotros.png" alt="logo" height="60px"></a>
         </li>
      <li class="nav-item active">
          <a class="nav-link" href="principal3.jsp"><h3>INICIO</h3></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Carrito2.jsp"><h3>CANASTA</h3></a>
      </li>
      <%--<li class="nav-item">
        <a class="nav-link" href="listarPedido.jsp"><h3>PRODUCTOS</h3></a>
      </li>--%>
        <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             <h4>PRODUCTOS</h4>
           </a>
           <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
               <li><a class="dropdown-item" href="listarPedido.jsp"><h4>Buscar producto</h4></a></li>
               <li><a class="dropdown-item" href="MantenerProducto.jsp"><h4>Mantener producto</h4></a></li>
           </ul>
        </li>
        <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             <h4>PROVEEDORES</h4>
           </a>
           <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
               <li><a class="dropdown-item" href="BuscarProveedor.jsp"><h4>Buscar</h4></a></li>
               <li><a class="dropdown-item" href="RegistroProveedor.jsp"><h4>Registro</h4></a></li>
               <li><a class="dropdown-item" href="MantenerProveedor.jsp"><h4>Mantenimiento</h4></a></li>
           </ul>
        </li>
      <li class="nav-item">
        <a class="nav-link" href="RegisRepor.jsp"><h3>ACCESORIOS</h3></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Nosotros.jsp"><h3>NOSOTROS</h3></a>
      </li>
<%  
          //usuario b = (usuario) session.getAttribute("sban");
        %>
              <%    String usua=null ;
            if(session.getAttribute("us")!=null){
                usua = session.getAttribute("us").toString();
                %>
      <li class="nav-item">
        <a class="nav-link" ><h5>Bienvenido : <%=usua%> </h5></a> 
      </li>
      <button class="btn btn-outline-success" type="button" style="margin: 4px;" onclick="window.location='loginweb.jsp?cerrar=true'">Cerrar Sesion</button>
                    <%
            }else
            {
                out.print("<script>location.replace('loginweb.jsp');</script>");
            }
            if(request.getParameter("cerrar")!=null){
                session.invalidate();
                }
            %>
    </ul>
  </div>
</nav>
</div>
    <hr size="1" />
</html>
