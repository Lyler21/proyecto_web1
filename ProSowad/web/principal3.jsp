<%-- 
    Document   : principal
    Created on : 11/06/2020, 09:04:14 PM
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
        <title>Inicio</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="jquery.js" type="text/javascript"></script>
        <script>
            function fabricantes(){
                categoria = document.getElementById("selcategoria").value;
                datos={selcategoria:categoria};
                $.ajax({
                    data:datos,
                    type: 'POST',
                    url: "controles/cmbfabricantes.jsp",
                    success: function (respuesta) {
                        document.getElementById("divfabricante").innerHTML=respuesta;
                    }
                });
                
            }
            function VerProduc(){
                vcat = document.getElementById("selcategoria").value;
                vfab = document.getElementById("selfabricante").value;
                datos ={selcategoria:vcat,selfabricante:vfab};
                $.ajax({
                    data:datos,
                    type: 'POST',
                    url: "controles/MosProductos.jsp",
                    success: function (respuesta) {
                        document.getElementById("divproductos").innerHTML=respuesta;
                    }
                });
            }
            function Agregar(codpro,nompro,precio){
                datos={codigo:codpro,nombre:nompro,precio:precio};
                $.ajax({
                    data:datos,
                    type: 'POST',
                    url: "agregarproducto.jsp",
                    success: function (resp) {
                        $.ajax({
                            type: 'POST',
                            url: "bandejap.jsp",
                            success: function (respuesta) {
                               document.getElementById("divbandeja").innerHTML=respuesta;
                             }
                        });
                    } 
               });
               window.alert("Producto Asignado");
            } 
        </script>
    </head>
    <body>
        <jsp:include page="controles/Navegador3.jsp"/>
        <div align="center">
        <div class="container">
         <div class="col-lg-12">
          <div
            id="carouselExampleIndicators"
            class="carousel slide my-4"
            data-ride="carousel"
          >
            <ol class="carousel-indicators">
              <li
                data-target="#carouselExampleIndicators"
                data-slide-to="0"
                class="active"
              ></li>
              <li
                data-target="#carouselExampleIndicators"
                data-slide-to="1"
              ></li>
              <li
                data-target="#carouselExampleIndicators"
                data-slide-to="2"
              ></li>
              <li
                data-target="#carouselExampleIndicators"
                data-slide-to="3"
              ></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img
                  class="d-block img-fluid"
                  src="img\bn1.png"
                  alt="First slide"
                />
              </div>
              <div class="carousel-item">
                <img
                  class="d-block img-fluid"
                  src="img\b7.png"
                  alt="Second slide"
                />
              </div>
              <div class="carousel-item">
                <img
                  class="d-block img-fluid"
                  src="img\bn4.png"
                  alt="Third slide"
                />
              </div>
            </div>
            <a
              class="carousel-control-prev"
              href="#carouselExampleIndicators"
              role="button"
              data-slide="prev"
            >
              <span
                class="carousel-control-prev-icon"
                aria-hidden="true"
              ></span>
              <span class="sr-only">Previous</span>
            </a>
            <a
              class="carousel-control-next"
              href="#carouselExampleIndicators"
              role="button"
              data-slide="next"
            >
              <span
                class="carousel-control-next-icon"
                aria-hidden="true"
              ></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div>
        </div>
          </div>
        <div align="center"> 
        <table>
            <tr><%--
                <td valign="top">
                    Categoria<br>
                    <div id="divcategoria">
                    <jsp:include page="controles/cmbcategorias.jsp"/>
                    </div>
                    <br>
                    Fabricante<br>
                    <div id="divfabricante">
                    <jsp:include page="controles/cmbfabricantes.jsp"/>
                    </div>
                    <br>
                    <input type="button" value="Mostrar" onclick="VerProduc()">
                </td>--%>
                <td valign="top">
                    <div align="center">
                    Productos<br>
                    <div id="divproductos">
                    <jsp:include page="controles/MosProductos.jsp"/>
                    </div>
                </td>
            </tr>
        </table> 
       </div>
                    </div>
       <div align="center">
           <br><h2>PROMOCIONES POR EPOCA</h2>
        <table class="table table-bordered">
            <tr><br>
            <td valign="top" align="center">
                    <div>
                    <img src="img\flor1.jpg" alt="logo" height="250px">
                    <%String n = "Cantuta";
                    String c ="p001";
                    int precio = 20;
                    %>
                    <br><%=n%>
                    <br><%=precio%> SOLES
                    <br><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Agregar" onclick='Agregar("<%=c%>","<%=n%>",<%=precio%>)'>
                    </div>
                </td>
                <td valign="top" align="center">
                    <div>
                    <img src="img\flo2.jpg" alt="logo" height="250px">
                    <%String m = "Tulipane";
                    String ca ="p004";
                    int precio2 = 20;
                    %>
                    <br><%=m%>
                    <br><%=precio2%> SOLES
                    <br><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Agregar" onclick='Agregar("<%=ca%>","<%=m%>",<%=precio2%>)'>
                    </div>
                </td>
                <td valign="top" align="center">
                    <div>
                    <img src="img\flor3.jpg" alt="logo" height="250px">
                    <%String b = "Orquidea";
                    String ca2 ="p002";
                    int precio3 = 30;
                    %>
                    <br><%=b%>
                    <br><%=precio3%> SOLES
                    <br><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Agregar" onclick='Agregar("<%=ca2%>","<%=b%>",<%=precio3%>)'>
                    </div>
                </td>
                <td valign="top" align="center">
                    <div>
                    <img src="img\flor4.jpg" alt="logo" height="250px">
                    <%String m2 = "Girasol";
                    String ca3 ="p003";
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
    </body>
</html>
