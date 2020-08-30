<%@page import="br.bandejabr"%>
<%@page import="be.productobe"%>
<%
    String cod=request.getParameter("codigo");
    productobe e = new productobe();
    e.setCodigo(cod);
    bandejabr b = (bandejabr) session.getAttribute("sban");
    b.eliminar(cod);
    session.setAttribute("sban", b);
%>