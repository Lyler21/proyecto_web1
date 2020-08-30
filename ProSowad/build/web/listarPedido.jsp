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
    int usua2=20;
pedidodao r = new pedidodao();
int p=20;
List<pedido> lista = r.listaPro2(usua);
%>
    <head>
        <title>Buscar producto</title>
    </head>
            <div>
<%--
<table class="table"  align="center" style="text-align:center;">
    <thead class="thead-light">
        <tr>
            <th>Codigo</th>
            <th>Nombre</th>
            <th>Precio</th>
            <th>Nombre</th>
            <th>Precio</th>
        </tr>
    </thead>
    <tbody>
        <% if(lista==null){
                 %>
                 <tr><td colspan="4" align="center">Tu carrito esta Vacio <br><img src="img\carritoVacio.png" alt="logo" height="85px"></td></tr>
                 
                 <%
            }else{
            for(pedido e:lista){
            %>
            <tr>
                <td><%=e.getCodpe()%></td>
                <td><%=e.getCodpro()%></td>
                <td><%=e.getCan()%></td>
                <td><%=e.getUsu()%></td>
                <td><%=e.getTotal()%></td>
                             
            </tr>
        <%
        }}
        %>
    </tbody>
</table>
--%>



            <div align="center"> 
                <table>
                <td valign="top">
                    <div align="center">
                    <br><h2>BUSCAR PRODUCTOS</h2>
                    <jsp:include page="controles/MosProductos2.jsp"/>
                    </div>
                    <div class="form-grup">
                            <label>Descripción fisiológica</label> <input type="text" name="txtNombre" class="form-control">
                    </div>
                    <div class="form-grup">
                            <label>ID producto</label> <input type="text" name="txtNombre" class="form-control">
                    </div>
                    <div class="card-footer">
                    <input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Buscar" onclick= "self.location.href = 'principal3.jsp'">
                    <input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Regresar" onclick= "self.location.href = 'principal3.jsp'">
                    </div>
                </td>
                </table>    
            </div>