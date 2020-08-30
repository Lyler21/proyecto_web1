<%@page import="br.bandejabr"%>
<%@page import="be.productobe"%>
<%
    String cod=request.getParameter("codigo");
    String nom=request.getParameter("nombre");
    int pre =Integer.parseInt(request.getParameter("precio"));
    productobe e = new productobe();
    e.setCodigo(cod);
    e.setCantidad(1);
    e.setNombre(nom);
    e.setPrecio(pre);
    bandejabr b = (bandejabr) session.getAttribute("sban");
    if(b==null){
        b = new bandejabr();
    }
    b.agregar(e);
    session.setAttribute("sban", b);
%>