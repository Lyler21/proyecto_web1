<%-- 
    Document   : loginweb
    Created on : 12/06/2020, 09:28:32 PM
    Author     : Mia
--%>

<%@page import="br.bandejabr"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dao.bd"%>
<%@page import="java.sql.Connection"%>
<%@page import="buscador.practica"%>
<%@page import="dao.login"%>
<%@page import="be.usuario"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    </head>
    <body>
        <div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
        <br>
        <img src="img\Login.png" id="icon" alt="User Icon"/>
        <br>
        <br>
      <h1>Corporación V'lirio</h1>
    </div>

    <!-- Login Form -->
    <form id="form1">
      <input type="text" id="login" class="fadeIn second" name="login" placeholder="Usuario">
      <input type="password" id="password" class="fadeIn third" name="password" placeholder="password">
      <br>
      <br>
      <input type="submit" name ="Entrar" value="Entrar" class="fadeIn fourth">
      <input type="button" name ="Inicio" value="Inicio" class="fadeIn fourth" onclick="window.location='principal.jsp'">
    </form>
  </div>
</div>
    </body>
    <%
            
            if(request.getParameter("Entrar") != null){
                String usuari = request.getParameter("login");
                String password = request.getParameter("password");
                int c=1;
                int d=2;
                usuario a = new usuario(usuari, null, null, password,c);
                usuario b = new usuario(usuari, null, null, password,d);
               // session.setAttribute("sus", a);
                int ingreso = new login().Ingresar2(a);
                int ingres2 = new login().Ingresar2(b);
                if(ingreso != 0) {
                    response.sendRedirect("principal2.jsp");
                    //usuario b = (usuario) session.getAttribute("sban");
                    session.setAttribute("us", usuari);
                    session.setAttribute("con", password);
                    //out.print("Binevenido");
                }
                else {
                    out.print("USUARIO INCORRECTO");
                }
                if(ingres2 != 0) {
                    response.sendRedirect("principal3.jsp");
                    //usuario b = (usuario) session.getAttribute("sban");
                    session.setAttribute("us", usuari);
                    session.setAttribute("con", password);
                    //out.print("Binevenido");
                }
                else {
                    out.print("USUARIO INCORRECTO");
                }
            }
            if(request.getParameter("cerrar")!=null){
                session.invalidate();
                }
        %>
</html>
