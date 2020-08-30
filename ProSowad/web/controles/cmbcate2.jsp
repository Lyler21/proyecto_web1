<%@page import="br.categoriabr"%>
<%@page import="be.categoriabe"%>
<%@page import="java.util.List"%>
<%
categoriabr r = new categoriabr();
List<categoriabe> lista = r.listar();
%>
<select id ="selcategoria2" name="selcategoria2" class="form-control" required>
    <option value="0" >Seleccione las Categorias</option>
<%
    for(categoriabe e:lista){
     %>
     <option value="<%=e.getCodigo()%>"><%=e.getNomcodigo()%></option>
     <%
    }
%>
</select>   
