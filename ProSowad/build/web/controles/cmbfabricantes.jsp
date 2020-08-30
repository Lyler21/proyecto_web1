<%@page import="be.fabricantebe"%>
<%@page import="java.util.List"%>
<%@page import="br.fabricantebr"%>
<%
    String valor = request.getParameter("selcategoria");
    int cat = 0;
    if(valor==null){
        cat=0;
    }else{
        cat = Integer.parseInt(valor);
    }
    fabricantebr r = new fabricantebr();
    List<fabricantebe> lista = r.listar(cat);
%>
<select id ="selfabricante" name="selfabricante">
<option value="0">Seleccione los Fabricantes</option>
    <%
        for(fabricantebe e:lista){
          %>
          <option value="<%=e.getCodfabricante()%>"><%=e.getNomfabricante()%></option>
          <%
        }
    %>
</select>   
