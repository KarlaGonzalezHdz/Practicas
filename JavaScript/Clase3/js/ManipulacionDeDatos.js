 $(document).ready(function () {
    //AJAX (Nombre del archivo, { Propiedades de apertura});
    $.ajax('data/estados.json', {
            dataType: 'json',
            contentType: 'application/json',
            cache: false
        })
        .done(function (response) {
            var ObjectSelect = '<select class="form-control form-control-lg">';
            //EACH(DATOS A EVALUAR , ACCIÓN QUE TIENE QUE REALIZAR POR CADA DATO.)
            $.each(response, function (index, element) {
                ///Muestra el valor del index actual del ciclo o de la interacion de each
                console.log(index);
                //console.log(element);
                //console.log(element.clave);
                //console.log(element.nombre);
                ObjectSelect += '<option value="' + element.clave + '">' + element.nombre + '</option>';

            });
            ObjectSelect += '</select>';
            $('#estados').append(ObjectSelect)
        });

});   



// PROFILES
 $(document).ready(function () {
    //AJAX (Nombre del archivo, { Propiedades de apertura});
    $.ajax('data/info.json', {
            dataType: 'json',
            contentType: 'application/json',
            cache: false
        })
        .done(function (response) {
            var Listado = '<div class="my-3 p-3 bg-white rounded shadow"><h6 class="border-bottom border-gray pb-2 mb-0">Listado de alumnos</h6>';

            //EACH(DATOS A EVALUAR , ACCIÓN QUE TIENE QUE REALIZAR POR CADA DATO.)
            $.each(response, function (index, element) {
                Listado += '<div class="media text-muted pt-3">';
                Listado += '<img src="' + element.imagen + 'alt="" height="40" style="margin: 5px;">';
                Listado += '<p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">' + element.nombre + '<br>' + element.estado+ '</p>';
                Listado += '</div>'

            });
            Listado += '</div>';
            $('#profiles').append(Listado)
        });

}); 