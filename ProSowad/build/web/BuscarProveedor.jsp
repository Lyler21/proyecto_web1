<%@page import="br.bandejabr"%>
<%@page import="dao.pedidodao"%>
<%@page import="java.util.List"%>
<%@page import="be.pedido"%>
<%@page session="true"%>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <head>
        <title>Buscar Proveedor</title>
    </head>
            <div align="center"> 
                <table>
                <td valign="top">
                    <div align="center">
                    <br><h2>Buscar Proveedor</h2>
                    </div>
                    <div class="form-grup">
                            <label>Nombre</label> <input type="text" name="txtNombre" class="form-control">
                    </div>
                    <div class="form-grup">
                            <label>Apellidos</label> <input type="text" name="txtNombre" class="form-control">
                    </div>
                    </div>
                    <div class="form-grup">
                            <label>Edad</label> <input type="text" name="txtNombre" class="form-control">
                    </div> 
                    </div>
                    <div class="form-grup">
                            <label>Género</label> <input type="text" name="txtNombre" class="form-control">
                    </div>    
                    </div>
                    <div class="form-grup">
                            <label>Teléfono</label> <input type="text" name="txtNombre" class="form-control">
                    </div>   
                    </div>
                    <div class="form-grup">
                            <label>Tipo de documento</label> <input type="text" name="txtNombre" class="form-control">
                    </div>           
                    </div>
                    <div class="form-grup">
                        <label>Nro. Doc</label> <input type="text" name="txtNombre" class="form-control">
                    </div>                    
                    <div class="card-footer">
                    <input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Buscar" onclick= "self.location.href = 'principal3.jsp'">
                    <input type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" value="Regresar" onclick= "self.location.href = 'principal3.jsp'">
                    </div>
                </td>
                </table>    
            </div>

