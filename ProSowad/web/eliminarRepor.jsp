<%@page import="dao.reportedao"%>
<%@page import="be.reporte"%>
<%@page import="br.categoriabr"%>
<%@page import="be.categoriabe"%>
<%
reporte entidad = new reporte();
String  c = request.getParameter("id");
entidad.setIdrepor(Integer.parseInt(c));
int r = new reportedao().eliminar(entidad);
response.sendRedirect("listarReportes.jsp");
%>