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


//PRACTICA 1
var Contador = 0;

function Incremetar() {

    Contador++;
    Menssage("El contador ahora vale: " + Contador, 1);
}


//PRACTICA 2
function MostrarInfo() {
    var NombreUsuario = document.getElementById("NombreUsuario").value;
    var EdadUsuario = document.getElementById("EdadUsuario").value;

    if (NombreUsuario == "" || EdadUsuario == "") {
        Menssage("No se recibieron datos", 2);
    } else {
        Menssage("Ingreso el nombre de: " + NombreUsuario + " , su edad es: " + EdadUsuario, 1);
    }
}



//PRACTICA 3
function ObtenerSeleccion() {
    var Bandera = false;
    if (document.getElementById("SinEstudios").checked) {
        Menssage("No tiene estudios", 1);
        Bandera = true;
    }
    if (document.getElementById("Primarios").checked) {
        Menssage("Es primarios", 1);
        Bandera = true;
    }
    if (document.getElementById("Secundarios").checked) {
        Menssage("Es secundario", 1);
        Bandera = true;
    }
    if (document.getElementById("Universitarios").checked) {
        Menssage("Es Universitario", 1);
        Bandera = true;
    }
    if(Bandera == false)
    {
        Menssage("No se encontro una seleccion", 2)
    }
}

//PRACTICA 4

function VerificarAcceso(){
    if(window.confirm("Desea abandonar MySitio e ingresar a Facebook")){
        window.location = "https://www.facebook.com";
    }
    else{
        window.alert("No hay problema, continua navegando en mi sitio");

    }
}

function Atras(){
    window.history.go(-1);
}
function Adelante(){
    window.history.go(1);
}


function Info(){
    document.write("AppName:" + navigator.appName + "<br>");
    document.write("AppVersion:" + navigator.appVersion + "<br>");
    document.write("AppCookieEnable:" + navigator.appCookieEnable + "<br>");
    document.write("Plugins:" + navigator.plugins.length + "<br>");
}