function Validar() {
    ObtenerDatos();
    OcultarFormulario();
    MostrarDatos();
    
}

function ObtenerDatos() {
    //1. Obtener en base al ID de los elementos del formulario los datos para Modulo, Nombre y Correo.
    var Nombre = document.getElementById("Nombre").value;
    var Correo = document.getElementById("Correo").value;
    var Telefono = document.getElementById("Telefono").value;
    var Direccion = document.getElementById("Direccion").value;
    var Asunto = document.getElementById("Asunto").value;
    var Mensaje = document.getElementById("Mensaje").value;
    document.getElementById('Nombre_Result').innerHTML = Nombre;
    document.getElementById('Correo_Result').innerHTML = Correo;
    document.getElementById('Telefono_Result').innerHTML = Telefono;
    document.getElementById('Direccion_Result').innerHTML = Direccion;
    document.getElementById('Asunto_Result').innerHTML = Asunto;
    document.getElementById('Mensaje_Result').innerHTML = Mensaje;
}

function OcultarFormulario() {
    document.getElementById('formulario').style.display = "none";

}

function MostrarDatos() {
    document.getElementById('Result').hidden = false;

}

function OtroRegistro(){
    alert("Su Registro Actual ha sido guardado, continue haciendo el siguiente registro que desea");
}

function FinalizarRegistro(){
    alert("Registro guardado con exito, Gracias por su Registro");
}