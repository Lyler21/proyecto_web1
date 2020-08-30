<%@page import="be.categoriabe"%>
<%@page import="br.categoriabr"%>
<%@page import="br.productobr"%>
<%@page import="java.util.List"%>
<%@page import="be.productobe"%>
<%
categoriabr r = new categoriabr();
List<categoriabe> lista = r.listar();
%>
<table class="table">
    <thead class="thead-light">
        <tr>
            <th>Codigo</th>
            <th>Nombre</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <% for(categoriabe e:lista){
            %>
            <tr>
                <td><%=e.getCodigo()%></td>
                <td><%=e.getNomcodigo()%></td>
                <th>
                    <a href="eliminarCate.jsp?codcategoria=<%=e.getCodigo()%>">            
                        <center><input value = "Eliminar" type = "button" class="btn btn-primary"></center>
                    </a>
                </th> 
            </tr>
        <%
        }
        %>
    </tbody>
</table>