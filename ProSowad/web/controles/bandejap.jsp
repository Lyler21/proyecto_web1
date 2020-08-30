<%@page import="be.productobe"%>
<%@page import="java.util.List"%>
<%@page import="br.bandejabr"%>
<%
    bandejabr b = (bandejabr) session.getAttribute("sban");
%>
<table class="table">
    <br>
    <h1 align="center" >Canasta de compras</h1>
    <br>
    <thead class="thead-light">
        <tr>
            <th>Producto</th><th>Cantidad</th><th>Precio</th><th>Sub Total</th><th></th>
        </tr>
    </thead>
    <tbody>
        <%
            if(b==null){
                 %>
                 <tr><td colspan="4" align="center">Tu canasta esta vacía <br><img src="img\CanastaVacia.jpg" alt="logo" height="85px"></td></tr>
                 
                 <%
            }
            else{
                List<productobe> lista = b.getLista();
                int total=b.getTotal();
                int cantidad = 0;
                for(productobe e:lista){
                    int sub =   0;
                    sub = e.getCantidad() * e.getPrecio();
                  %>
                  <tr>
                      <td><%=e.getNombre()%></td>
                      <td  style="text-align:center" ><%=e.getCantidad()%></td>
                      <td  style="text-align:center"><%=e.getPrecio()%></td>
                      <td  style="text-align:center"><%=sub%></td>
                      <td><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Eliminar" onclick='Retirar("<%=e.getCodigo()%>")'></td>
                  </tr>
                <%
                    cantidad ++;
                }
                 %>
                 <tr>
                     <td>TOTAL</td><td></td>
                     <td>
                         
                     </td><td style="text-align:center"><%=b.getTotal()%></td><td></td>
                 </tr>
                 <%
            }
        %>
    </tbody>
</table>
    
