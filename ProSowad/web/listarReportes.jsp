<%@page import="be.reporte"%>
<%@page import="dao.reportedao"%>
<%@page import="br.bandejabr"%>
<%@page import="dao.pedidodao"%>
<%@page import="java.util.List"%>
<%@page import="be.pedido"%>
<%@page session="true"%>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<%
    String usua=null;
    bandejabr b = (bandejabr) session.getAttribute("sban");
    if(session.getAttribute("us")!=null){
                usua = session.getAttribute("us").toString();
    }
reportedao r = new reportedao();
List<reporte> lista = r.listaPro2();
%>
<body>
<table class="table">
    <thead class="thead-light">
        <tr>
            <th>Codigo</th>
            <th>Usuario</th>
            <th>Etiqueta</th>
            <th>Descripcion</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <% for(reporte e:lista){
            %>
            <tr>
                <td><%=e.getIdrepor()%></td>
                <td><%=e.getUsuario()%></td>
                <td><%=e.getEtiq()%></td>
                <td><%=e.getDesc()%></td>
                <th>
                <a href="eliminarRepor.jsp?id=<%=e.getIdrepor()%>">            
                        <center><input value = "Eliminar" type = "button" class="btn btn-primary"></center>
                </a>     </th>    
            </tr>
        <%
        }
        %>
    </tbody>
</table>
    <div align="center">
    <tr align="center">
                <td ><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Regresar" onclick= "self.location.href = 'principal2.jsp'"></td>
    </tr>
    </div>
</body>