<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Usuarios</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/cate.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="controles/Navegador.jsp"/>
        <br>
        <br>
        <html:form action="/usuario">
            <h2 align="center">Registro de Usuarios</h2>
            <br>
            <div class="form-group">
            <bean:message key="usuario.usuario"/>
            <html:text property="nombre" styleClass="controls"/>
            <td><html:errors property="usuvacio"/>
            </td>
            </div>
            <div class="form-group" >
            <bean:message key="usuario.nombre"/>
            <html:text property="nombreoficial" styleClass="controls"/>
            <td><html:errors property="novacio"/>
            </td>
            </div>
            <div class="form-group">
            <bean:message key="usuario.correo"/>
            <html:text property="correo" styleClass="controls"/>
            <td><html:errors property="corvacio"/>
            </td>
            </div>
            <div class="form-group">
            <bean:message key="usuario.contraseña"/>
            <html:password property="contra" styleClass="controls2"/>
            <td><html:errors property="convacio"/>
            <td><html:errors property="conlongitud"/>
            </td>
            </div>

            <div style="text-align: center;">
                <html:submit styleClass="submit" value="Registrar" onmouseover="this.style.background='#56baed'"
onmouseout="this.style.background='#1f53c5'"/>
            </div>
            <td><html:errors property="usuduplicado"/>  </td>
         </html:form>
    </body>
</html>