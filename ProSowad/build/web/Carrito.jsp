<%-- 
    Document   : Carrito
    Created on : 12/06/2020, 02:52:16 PM
    Author     : Mia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="jquery.js" type="text/javascript"></script>
        <script>
        function Retirar(codpro){
             datos={codigo:codpro};
                $.ajax({
                    data:datos,
                    type: 'POST',
                    url: "eliminarproducto.jsp",
                    success: function (resp) {
                        $.ajax({
                            type: 'POST',
                            url: "controles/bandejap.jsp",
                            success: function (respuesta) {
                               document.getElementById("divbandeja").innerHTML=respuesta;
                             }
                        });
                    }
                });
            }
            
        </script>
    </head>
    <body>
        <div align="center">
        <jsp:include page="controles/Navegador.jsp"/>
        <table>
            <tr>
                <td>
                    <div id="divbandeja">
                    <jsp:include page="controles/bandejap.jsp"/>
                    </div>
                       <tr align="center">
                <td><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Finalizar Compra" onclick= "self.location.href = 'RegisPedido.jsp'"></td>
                    </tr>
                </td>
             </tr>
       </table>   
        </div>          
    </body>
</html>
