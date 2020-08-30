<%@page import="br.categoriabr"%>
<%@page import="be.categoriabe"%>
<%
categoriabe entidad = new categoriabe();
String  c = request.getParameter("codcategoria");
entidad.setCodigo(Integer.parseInt(c));
int r = new categoriabr().eliminar(entidad);
response.sendRedirect("listarCategorias.jsp");
%>