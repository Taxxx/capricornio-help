<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Consultores</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link href="css/redmond/jquery-ui-1.10.4.custom.css" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css">
        <script src="js/jquery.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/main.js"></script>
    </head>
    <body>
        <form id="capri_form_consultorias" method="post">
            <div id="consultoria_datos_generales">
                <label>Usuario Solicitante:</label>
                <input type="text" name="usuario_solicitud" value="Prueba 1" disabled/>
                <label>Detalle Solicitud:</label>
                <input type="text" name="detalle_solicitud" value="Prueba 2" disabled/>
                <label>Unidad Solicitante:</label>
                <input type="text" name="unidad_solicitante" value="Prueba 3" disabled/>
                <label>Unidad Destino:</label>
                <input type="text" name="unidad_destino" value="Prueba 4" disabled/>
            </div>
            <div id="consultoria_detalle">
                <table id="tabla_consultoria_detalle">
                    <tr>
                        <th>Tipo Item</th>
                        <th>Articulo</th>		
                        <th>Unidad de Medida</th>
                        <th>Cantidad Pedida</th>
                        <th>Terminos de Referencia</th>
                    </tr>
                    <tr>
                        <td>Consultoria</td>
                        <td>Consultorías por Producto</td>		
                        <td>Unidad</td>
                        <td>1</td>
                        <td><input id="btn_adjunta_referencia" type="button" value="Terminos de Referencia"/></td>
                    </tr>
                    <tr>
                        <td>Consultoria</td>
                        <td>Consultorías en Linea</td>		
                        <td>Unidad</td>
                        <td>2</td>
                        <td><input type="button" value="Terminos de Referencia"/></td>
                    </tr>
                </table>
            </div>
            <input type="Submit" id="fin_consultoria" value="Terminar Solicitud"/>
        </form>
        <div id="terminos_referencia_consultor" title="Terminos de Referencia">
            <form  method="post" action="uploadFile" enctype="multipart/form-data">
                <label>Seleccione Archivo</label>
                <input id="path_file_adj_consultor" type="file" name="uploadFile"/> 
                <input id="btn_upload_referencia" type="submit" value="Adjuntar" />
            </form>
            <div id="lista_terminos_adjuntos_consultoria">
                <nav>
                    <ul></ul>
                </nav>
            </div>
        </div>
        
    </body>
</html>