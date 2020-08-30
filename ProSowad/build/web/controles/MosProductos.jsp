<%@page import="br.productobr"%>
<%@page import="java.util.List"%>
<%@page import="be.productobe"%>
<%
    String scat=request.getParameter("selcategoria");
    String sfab=request.getParameter("selfabricante");
    
    int cat=0;
    if(scat==null){
        cat=0;
    }else{
        cat=Integer.parseInt(scat);
    }
    int fab =0;
    if(sfab==null){
        fab=0;
    }else{
        fab=Integer.parseInt(sfab);
    }
productobr r = new productobr();
List<productobe> lista = r.listaProList(cat,fab);
%>
<table class="table">
    <thead class="thead-light">
        <tr>
            <th>Codigo</th>
            <th>Nombre</th>
            <th>Precio</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <% for(productobe e:lista){
            %>
            <tr>
                <td><%=e.getCodigo()%></td>
                <td><%=e.getNombre()%></td>
                <td><%=e.getPrecio()%></td>
                <td><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Agregar" onclick='Agregar("<%=e.getCodigo()%>","<%=e.getNombre()%>",<%=e.getPrecio()%>)'></td>
             
            </tr>
        <%
        }
        %>
    </tbody>
</table>