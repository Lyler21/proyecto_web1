<%-- 
    Document   : Factura
    Created on : 16/07/2020, 05:05:25 PM
    Author     : sofia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Factura</title>
    </head>
    <body>
        <div class="container mt-4">
            <form action="Controlador?accion=Guardar" class="col-md-6" method="POST" enctype="multipart/form-data">
            <div class="card">
                <div class="card-header">
                    <h3>Generar factura</h3>
                </div>
                <div class="card-body">
                    <h5>Agregar campos:</h5
                </div>
                <div class="card-body">
                    <div class="form-grup">
                        <label>RUC de la empresa</label>
                        <input type="text" name="txtNombre" class="form-control">
                    </div>
                    <div class="form-grup">
                        <label>Razón social</label>
                        <input type="text" name="txtNombre" class="form-control">
                    </div>
                    <div class="form-grup">
                        <label>Dirección</label>
                        <input type="text" name="txtNombre" class="form-control">
                    </div>
                </div>
                <div class="card-footer">
                    <td ><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Imprimir Factura" onclick= "self.location.href = 'principal3.jsp'"></td>
                    <td ><input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Regresar" onclick= "self.location.href = 'principal3.jsp'"></td>
                </div>
            </div>
            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
