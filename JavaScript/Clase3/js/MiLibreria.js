
//funcion de inicio hasta que termine la carga de la app.
$(document).ready(
    //Inicia la espera de click sobre un boton
    function(){
        $('#ejemplo').on('click', 'button.switch', function(){
            //Inicia la obtencion de datos de un archivo o enlace.
            $.ajax('Biografía.html')
                .done(function(respose){

                    //JS NORMAL: coloca el HTML dentro del div result
                    $('#result').html(respose);

                });
        });
    }
);
 


//funcion de inicio hasta que termine la carga de la app.
$(document).ready(
    //Inicia la espera de click sobre un boton
    function(){
        $('#ejemplo').on('click', 'button.switch', function(){
            //Inicia la obtencion de datos de un archivo o enlace.
            $.ajax('Biografía.html', {
                beforeSend: function(){
                    var html;
                    html ='<div class="spinner-grow text-info" role="status"><span class="sr-only">Loading...</span></div>';
                    $('#status').append(html);
                }
            })
                .done(function(respose){

                    //JS NORMAL: coloca el HTML dentro del div result
                    $('#result').html(respose);
                })
                .always(function(){
                    var html;
                    html = '<div class="alert alert-primary" role="alert">Finalizo la carga.</div>';
                    $('#status').append(html);
                });
        });
    }
);