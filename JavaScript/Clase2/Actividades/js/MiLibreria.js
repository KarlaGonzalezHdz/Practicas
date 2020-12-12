function Menssage(Mensaje, Tipo)
{
    var Seccion = document.getElementById("Alerta");
    Seccion.style.display = "block";
    if(Tipo == 1) //Esto es un mensaje satisfactorio (Verde)
    {
        Seccion.innerHTML = '<div class="alert alert-success" role="alert">' + Mensaje + '</div>';
    }
    if(Tipo == 2) //Esto es un mensaje no satisfactorio (Rojo)
    {
        Seccion.innerHTML = '<div class="alert alert-danger" role="alert">' + Mensaje + '</div>';
    }

    setTimeout(
        function(){
            Seccion.style.display = "none";
        }, 2000);
}

//Actividad 1
function Boton() {

    Menssage("El usuario presiono el  boton  1", 1);
}

function Boton2() {

    Menssage("El usuario presiono el  boton  2", 1);
}

function Boton3() {

    Menssage("El usuario presiono el  boton  3", 1);
}

//Actividad 2
function MostrarNumero() {
    var Numero = document.getElementById("Numero").value;

    if (Numero == "") {
        Menssage("No se recibieron datos", 2);
    } else {
        Menssage("Ingreso el número: " + Numero, 1);
    }
}

//Actividad 3
function MostrarInfo() {
    var NombreUsuario = document.getElementById("NombreUsuario").value;
    var Apellido = document.getElementById("Apellido").value;
    var Datos = document.getElementById('Datos').value = NombreUsuario + " " + Apellido;
    if (NombreUsuario == "" || Apellido == "") {
        Menssage("No se recibieron datos", 2);
    } else {
        Menssage("Ingreso el nombre de: " + NombreUsuario + " , su edad es: " +Apellido, 1);
    }
}

//Actividad 4
function MensajeAcceso(){
    var Bandera = false;
    if (document.getElementById("Menor").checked) {
        Menssage("No tiene Acceso", 2);
        Bandera = true;
    }
    if (document.getElementById("Mayor").checked) {
        Menssage("Tiene Acceso", 1);
        Bandera = true;
    }
    if(Bandera == false)
    {
        Menssage("No se encontro una seleccion", 2)
    }
}