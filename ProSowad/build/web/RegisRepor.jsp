<%-- 
    Document   : RegisRepor
    Created on : 12/07/2020, 05:31:31 PM
    Author     : Mia
--%>

<%@page import="dao.reportedao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@page session="true"%>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<%
    String usua = null;
    if(session.getAttribute("us")!=null){
         usua = session.getAttribute("us").toString();
        }
%>
<%--
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Usuarios</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/cate.css" rel="stylesheet" type="text/css"/>
    </head>
    
        <jsp:include page="controles/Navegador3.jsp"/>
        <br>
        <br>
        <html:form action="/reporte">
            <h2 align="center">Registro de Reportes</h2>
            <br>
            <div class="form-group" >
            <bean:message key="reporte.usuario"/>
            <html:text property="usuario" styleClass="controls" value="<%=usua%>" disabled="true"/>
            </div>
            <div class="form-group">
            <bean:message key="reporte.etiqueta"/>
            <html:text property="etiq" styleClass="controls"/>
            <td><html:errors property="etiqvacio"/>
            </td>
            </div>
            <div class="form-group">
            <bean:message key="reporte.descripcion"/>
            <html:text property="desc" styleClass="controls"/>
            <td><html:errors property="descvacio"/>
            </td>
            </div>

            <div style="text-align: center;">
                <html:submit styleClass="submit" value="Registrar" onmouseover="this.style.background='#56baed'"
onmouseout="this.style.background='#1f53c5'"/>
            </div>
            <td><html:errors property="reporteerror"/>
            </td>
         </html:form>
--%>    
<body>
<div align="center">
           <br><h2>CATÁLOGO DE ACCESORIOS</h2>
        <table class="table table-bordered">
            <tr><br>
            <td valign="top" align="center">
                    <div>
                    <img src="img\Peluche.jpg" alt="logo" height="250px">
                    <%String n = "Peluche de Oso";
                    String c ="P010";
                    int precio = 25;
                    %>
                    <br><%=n%>
                    <br><%=precio%> SOLES
                    <br><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Agregar" onclick='Agregar("<%=c%>","<%=n%>",<%=precio%>)'>
                    </div>
                </td>
                <td valign="top" align="center">
                    <div>
                    <img src="img\Corazon.jpg" alt="logo" height="250px">
                    <%String m = "Peluche Corazon";
                    String ca ="P020";
                    int precio2 = 20;
                    %>
                    <br><%=m%>
                    <br><%=precio2%> SOLES
                    <br><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Agregar" onclick='Agregar("<%=ca%>","<%=m%>",<%=precio2%>)'>
                    </div>
                </td>
                <td valign="top" align="center">
                    <div>
                    <img src="img\PelucheCorazon.jpg" alt="logo" height="250px">
                    <%String b2 = "Oso Corazon";
                    String ca2 ="P030";
                    int precio3 = 30;
                    %>
                    <br><%=b2%>
                    <br><%=precio3%> SOLES
                    <br><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Agregar" onclick='Agregar("<%=ca2%>","<%=b2%>",<%=precio3%>)'>
                    </div>
                </td>
                <td valign="top" align="center">
                    <div>
                    <img src="img\GloboFelicidades.jpg" alt="logo" height="250px">
                    <%String m2 = "Globo Felicidades";
                    String ca3 ="P040";
                    int precio4 = 15;
                    %>
                    <br><%=m2%>
                    <br><%=precio4%> SOLES
                    <br><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Agregar" onclick='Agregar("<%=ca3%>","<%=m2%>",<%=precio4%>)'>
                    </div>
                </td>
            </tr>
        </table>
       </div>
    
    <div align="center">
        <%if(usua.equals("admin")){            
            %>
                <tr align="center">
                <td ><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Regresar" onclick= "self.location.href = 'principal2.jsp'"></td>
    </tr>
       <% }else {%>
<tr align="center">
                <td ><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Regresar" onclick= "self.location.href = 'principal3.jsp'"></td>
    </tr>
<%}
    %>
    </div>
</body>

