$(document).ready(function () {
    console.log("hola");
    $.ajax('data/info.json', {
        dataType: 'json',
        contentType: 'application/json',
        cache: false
    })
        .done(function (response) {
                var Listado = '<div class="card-deck mx-auto mt-4 mr-2">';
            $.each(response, function (index, element) {
                Listado += '<div class="card">';
                Listado += '<h1 class="text-center"><b>'+ element.titulo +'</b></h1>';
                Listado += '<img src='+ element.imagenUrl +' class="card-img-top" alt="..."></img>';
                Listado += '<div class="card-body">';
                Listado += '<h5 class="card-title">'+ element.subtitulo +'</h5>';
                Listado += '<p class="card-text ">'+ element.descripcion +'</p>';
                Listado += '<button type="button" class="btn btn-info mx-auto d-block btn-a"> <a class="btn-a" href='+ element.sitio +' target="_blank" rel="noopener noreferrer"> VER MÁS</a></button>';
                Listado += ' <p class="card-text mt-3 text-center"><small class="text-muted mt-5">06 de octubre del 2020</small></p>';
                Listado += '</div>'
                Listado += '</div>'
            });
            Listado += '</div>';
            $('#tarjetas').append(Listado)
        });
}); 

//MODAL
function Validar(){
    event.preventDefault();
    //Obtencion de datos - Entradas
    var Nombre = document.getElementById("Nombre").value;
    var Correo = document.getElementById("Correo").value;
    var Telefono = document.getElementById("Telefono").value;
    var Mensaje = document.getElementById("Mensaje").value;
    

    if (Nombre.length && Correo.length && Telefono.length && Mensaje.length > 0 ){
        alert('Los datos registrados se guardaron los datos exitosamente');
    } else{
        alert('Es necesario llenar todos los datos');
    }
    
}

