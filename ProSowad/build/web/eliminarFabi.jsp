<%@page import="br.fabricantebr"%>
<%@page import="be.fabricantebe"%>
<%
fabricantebe entidad = new fabricantebe();
String  c = request.getParameter("codfabricante");
entidad.setCodfabricante(Integer.parseInt(c));
int r = new fabricantebr().eliminar(entidad);
response.sendRedirect("listarFabricantes.jsp");
%>