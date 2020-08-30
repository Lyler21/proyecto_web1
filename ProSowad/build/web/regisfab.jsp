<%@page import="br.fabricantebr"%>
<%@page import="be.fabricantebe"%>
<%
    fabricantebe e = new fabricantebe();
    String des;
    des = request.getParameter("selcategoria2");
    String nom =request.getParameter("txtnomfabricante");
    int a; 
    a = Integer.parseInt(request.getParameter("txtcodfabricante"));
    e.setCategoria(Integer.parseInt(des));
    e.setCodfabricante(a);
    e.setNomfabricante(nom);
    int r = new fabricantebr().nuevo(e);
    request.getRequestDispatcher("RegisFabricante.jsp").forward(request, response);
    
%>
