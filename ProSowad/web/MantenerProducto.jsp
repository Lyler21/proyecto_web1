
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mantener Producto</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/cate.css" rel="stylesheet" type="text/css"/>
        <script src="jquery.js" type="text/javascript"></script>
    </head>
    <body>
        <jsp:include page="controles/Navegador3.jsp"/>
        <br>
        <form action="regisfab.jsp" method="POST" class="form">
            <h2 align="center">Mantener Producto</h2>
            <br>
            <label>ID producto</label>
            <input type="text" name="txtcodfabricante" class="form-control" placeholder="Codigo" required><br>
            </div>
            <label>Descripción</label>
            <input type="text" name="txtcodfabricante" class="form-control" placeholder="Descripción" required><br>
            </div>
            <label>Altura</label>
            <input type="text" name="txtnomfabricante" class="form-control" placeholder="Altura cm" required>
            </div>
            <label>Uso:</label>
            <input type="text" name="txtnomfabricante" class="form-control" placeholder="..." required>
            </div>
            <br>
            <div style="text-align: center;">
                <html:submit property="nomcodigo" styleClass="submit" value="Registrar" onmouseover="this.style.background='#56baed'"
onmouseout="this.style.background='#1f53c5'"/>  
                <html:submit property="nomcodigo" styleClass="submit" value="Modificar" onmouseover="this.style.background='#56baed'"
onmouseout="this.style.background='#1f53c5'"/>  
                <html:submit property="nomcodigo" styleClass="submit" value="Cancelar" onmouseover="this.style.background='#56baed'"
onmouseout="this.style.background='#1f53c5'"/>  
                <html:submit property="nomcodigo" styleClass="submit" value="Buscar" onmouseover="this.style.background='##56baed'"
onmouseout="this.style.background='#1f53c5'"/> 
            </div>
        </form>
    </body>
</html>
