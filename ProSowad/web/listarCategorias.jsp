<%-- 
    Document   : listarCategorias
    Created on : 21/06/2020, 02:42:48 PM
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
                <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
                <script src="jquery.js" type="text/javascript"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="controles/Navegador2.jsp"/>
        <br>
        <br>
        <h1 align="center">Lista de Categorias</h1>
        <table align="center">
            <tr>
                <td> 
                    <br>
                    <div id="divcategoria" align="center">
                    <jsp:include page="controles/MosCategorias.jsp"/>
                    </div>
                </td>
            </tr>
        </table>
    </body>
</html>
