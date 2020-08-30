
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Categorias</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/cate.css" rel="stylesheet" type="text/css"/>
        <script src="jquery.js" type="text/javascript"></script>
    </head>
    <body>
        <jsp:include page="controles/Navegador2.jsp"/>
        <br>
        <br>
        <html:form action="/categoria">
            <h2 align="center">Registro de Categorias</h2>
            <br>
            <div class="form-group" >
            <bean:message key="categoria.cod"/>
            <html:text property="codigo" styleClass="controls"/>
            </div>
            <div class="form-group">
            <bean:message key="categoria.nom"/>
            <html:text property="nomcodigo" styleClass="controls"/>
            <td><html:errors property="dnivacio"/>
            </td>
            </div>

            <div style="text-align: center;">
                <html:submit property="nomcodigo" styleClass="submit" value="Registrar" onmouseover="this.style.background='#56baed'"
onmouseout="this.style.background='#1f53c5'"/>   
            </div>
                <td><html:errors property="catduplicado"/> </td> 
         </html:form>
    </body>
</html>
