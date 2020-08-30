<%-- 
    Document   : RegisFabricante
    Created on : 12/06/2020, 03:53:51 PM
    Author     : Mia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/cate.css" rel="stylesheet" type="text/css"/>
        <script src="jquery.js" type="text/javascript"></script>
    </head>
    <body>
        <jsp:include page="controles/Navegador2.jsp"/>
        <br>
        <form action="regisfab.jsp" method="POST" class="form">
            <h2 align="center">Registro de Fabricantes</h2>
            <br>
            <div class="form-group">
            <label>Categoria</label>
            <jsp:include page="controles/cmbcate2.jsp"/><br>
            <%String des1;
              des1 =request.getParameter("selcategoria2");
            %>
            </div>
            <div class="form-group">
            <label>Codigo</label>
            <input type="text" name="txtcodfabricante" class="form-control" placeholder="Codigo" required><br>
            </div>
            <div class="form-group">
            <label>Nombre</label>
            <input type="text" name="txtnomfabricante" class="form-control" placeholder="Nombre" required>
            </div>
            <br>
            <div style="text-align: center;">
                <html:submit property="nomcodigo" styleClass="submit" value="Registrar" onmouseover="this.style.background='#56baed'"
onmouseout="this.style.background='#1f53c5'"/>   
            </div>
        </form>
    </body>
</html>
