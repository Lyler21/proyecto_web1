
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Proveedor</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/cate.css" rel="stylesheet" type="text/css"/>
        <script src="jquery.js" type="text/javascript"></script>
    </head>
    <body>
        <jsp:include page="controles/Navegador3.jsp"/>
        <br>
        <form action="regisfab.jsp" method="POST" class="form">
            <h2 align="center">Tabla de datos</h2>
            <br>
            <label>Nombre</label>
            <input type="text" name="txtcodfabricante" class="form-control" placeholder="Nombre" required><br>
            </div>
            <label>Apellidos</label>
            <input type="text" name="txtcodfabricante" class="form-control" placeholder="Apellidos" required><br>
            </div>
            <label>Edad</label>
            <input type="text" name="txtnomfabricante" class="form-control" placeholder="Edad" required>
            </div>
            <label>Género:</label>
            <input type="text" name="txtnomfabricante" class="form-control" placeholder="Género" required>
            </div>
            <label>Nombre</label>
            <input type="text" name="txtcodfabricante" class="form-control" placeholder="Teléfono" required><br>
            </div>  
            <label>Tipo de documento</label>
            <input type="text" name="txtcodfabricante" class="form-control" placeholder="Documento" required><br>
            </div>   
            <label>Nro. Doc</label>
            <input type="text" name="txtcodfabricante" class="form-control" placeholder="Número" required><br>
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
