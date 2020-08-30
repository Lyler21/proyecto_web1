<%@page import="java.util.List"%>
<%@page import="be.fabricantebe"%>
<%@page import="br.fabricantebr"%>
<%
    String scat=request.getParameter("selcategoria");
    int cat=0;
    if(scat==null){
        cat=0;
    }else{
        cat=Integer.parseInt(scat);
    }
fabricantebr r = new fabricantebr();
List<fabricantebe> lista = r.listar(cat);
%>
<br>
<table class="table"  align="center" style="text-align:center;">
    <thead class="thead-light">
        <tr>
            <th>Codigo</th>
            <th>Nombre</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <% for(fabricantebe e:lista){
            %>
            <tr>
                <td><%=e.getCategoria()%></td>
                <td><%=e.getCodfabricante()%></td>
                <td><%=e.getNomfabricante()%></td>
            <th>
                    <a href="eliminarFabi.jsp?codfabricante=<%=e.getCodfabricante()%>">            
                        <center><input value = "Eliminar" type = "button" class="btn btn-primary"></center>
                    </a>
                </th>  
            </tr>
        <%
        }
        %>
    </tbody>
</table>