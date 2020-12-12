$(document).ready(function () {
    console.log("hola");
    $.ajax('data/tratamiento.json', {
        dataType: 'json',
        contentType: 'application/json',
        cache: false
    })
        .done(function (response) {
                var Listado = '';
            $.each(response, function (index, element) {
                Listado += '<div class="card  mb-3  w-75 mx-auto" >';
                Listado += ' <img src="'+ element.imagenUrl +'" class="card-img-top  " alt="...">';
                Listado += '  <div class="card-body">';
                Listado += '<h5 class="card-title">'+ element.titulo +'</h5>';
                Listado += '<p class="card-text">'+ element.descripcion+'</p>';
                Listado += '  <p class="card-text"><small class="text-muted">'+ element.actualizacion +'</small></p>';
                Listado += '</div>';
                Listado += '</div>'
                
            });
    
            $('#tratamiento').append(Listado)
        });
}); 
