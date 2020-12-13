function Validar() {
    
    OcultarFormulario();
    MostrarDatos();
    
}



function OcultarFormulario() {
    document.getElementById('formula').style.display = "none";

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