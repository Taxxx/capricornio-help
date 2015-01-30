$(document).on("ready",inicia);
function inicia() {
    $( "#terminos_referencia_consultor" ).dialog({
        autoOpen: false,
        height: 300,
        width: 772,
        modal: true,
        buttons: {
            "Adjuntar": function() {

            },
            Cancel: function() {
                    $( this ).dialog( "close" );
            }
        },
        close: function() {
                //allFields.val( "" ).removeClass( "ui-state-error" );
        }
    });
    $("#btn_adjunta_referencia").on("click", form_adjunta);
    $("#btn_upload_referencia").on("click", add_lista_termino_referencia);
    $(".borrar").on("click", eliminar);
    
    
    
}
function eliminar(){
    alert($(this).val());
}
function form_adjunta () {
	$( "#terminos_referencia_consultor" ).dialog( "open" );
}
function add_lista_termino_referencia(){
    var nombre_archivo=$("#terminos_referencia_consultor form input[name=uploadFile]").val();
    $("#lista_terminos_adjuntos_consultoria nav ul").append("<li><a class='file' href='http://200.7.160.182/prueba/"+nombre_archivo+"'>"+nombre_archivo+"</a><a class='cambiar' href='#'>Cambiar</a><a class='borrar' href='#'>Eliminar</a></li>");
    /********Arreglar**************/
    $( ".file" ).button({
      icons: {
        primary: "ui-icon-document"
      }
      
    });
    $( ".borrar" ).button({
      icons: {
        primary: "ui-icon-closethick"
      }
      
    });
    $( ".cambiar" ).button({
      icons: {
        primary: "ui-icon-arrowrefresh-1-e"
      }
      
    });
}   
//alert(":S");
/*function add_estilo_terminos_adjuntos(){
    alert(":D");
}*/