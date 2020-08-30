<%-- 
    Document   : RegisPedido
    Created on : 26/06/2020, 07:00:53 PM
    Author     : Mia
--%>

<%@page import="be.pedido"%>
<%@page import="be.detallep"%>
<%@page import="dao.pedidodao"%>
<%@page import="be.productobe"%>
<%@page import="java.util.List"%>
<%@page import="br.bandejabr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="jquery.js" type="text/javascript"></script>
        <link href="css/bootstrap-reboot.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <%
        bandejabr b = (bandejabr) session.getAttribute("sban");
        
        String usua=null;
        String a1=null ;
        String a2=null ;
        String nom=null;
        int can=0;
        pedidodao nump = new pedidodao();
        int pep = nump.id_incre();
        if(session.getAttribute("us")!=null){
         usua = session.getAttribute("us").toString();
        }        
    %>
    <body >
        <h1 align="center">Compra de Productos</h1>
        <div align="center">
        <h4>Pedido </h4> <%=pep%><br></td>
        <h4>Usuario </h4><%=usua%><br>
    <%
        List<productobe> lista = b.getLista();
    %>
    <h4>Productos</h4>
    <%
        for(productobe e:lista){
        if(e.getNombre()!=null){
            nom=e.getNombre();
        }
        if(e.getCantidad()!=0){
            can=e.getCantidad();
        }
        if(e.getCodigo()!=null){
            a1=e.getCodigo();
        }
    %>
    <%=e.getCodigo()%>
    <%=e.getNombre()%>
    <%=e.getCantidad()%><br>
        <%
            //int r = new pedidodao().registrar2(pe);
        }
            pedido pe = new pedido();
            /*for(int i=2;i<=pep;i++){
                    pep= pep++;
            } */      
            pe.setCodpe(pep);
            pe.setCodpro(a1);
            pe.setCan(can);
            pe.setUsu(usua);
            pe.setTotal(b.getTotal());
            int r = new pedidodao().registrar(pe);
            
    %>
    <h4>Total </h4> <%=b.getTotal()%><br>
    <h3>!GRACIAS POR SU COMPRA VUELVA PRONTO!</h3>
    <tr align="center">
                <td ><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Regresar" onclick= "self.location.href = 'principal3.jsp'"></td>
                <br><br>
                <td ><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Generar Factura" onclick= "self.location.href = 'Factura.jsp'"></td>
                <br><br>
                <td ><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Generar boleta" onclick= "self.location.href = 'principal3.jsp'"></td>
        </tr>
    </div>
    </body>
</html>
