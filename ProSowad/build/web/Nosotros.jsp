<%-- 
    Document   : Nosotros
    Created on : 12/07/2020, 09:32:39 PM
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
        <jsp:include page="controles/Navegador3.jsp"/>
        <div align="center">
        <h1>Corporación “V’lirio“ S.A.C.</h1><br>
        <di>
            <td>
                <h2>Misión</h2><br>
                “Empresa dedicada a la decoración floral, especializandose en el diseño y armado de arreglos florales <br>
                para cualquier tipo de eventos. Expresando de la mejor manera los sentimientos de nuestros clientes.”<br>
            </td>
            <td>
                <h2><br>Visión</h2><br>
                “Lograr ser la mejor florería, siendo su principal objetivo la de satisfacer a sus clientes”
            </td>
            <td>
                <h2><br>Contáctanos</h2><br>
                <h3>Teléfono</h3>(01) 3184761<br>
                <h3>Correo</h3>corporacionvlirio@gmail.com<br>
                <h3>Dirección</h3>Av. Metropolitana 2450 int. 188 Urb. El Retablo-Comas<br>
                <br><img src="img\Nosotros.png" alt="logo" height="80px">
            </td>
        </di>
        </div>
    </body>
</html>
