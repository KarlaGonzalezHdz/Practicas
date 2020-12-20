var Contador = 0;

var Total = 0;

function Agregar(precio, chek) {

    if (chek == true) {
        Contador=parseInt(Contador)+1;
        Total= parseFloat(Total)+parseFloat(precio);

    } else {
        Contador=parseInt(Contador)-1;
        Total=parseFloat(Total)-parseFloat(precio);
    }
}


function Comprar() {
    var Descuento = 0;

    if(Contador<=2){
        alert("Si su compra es mayor a cinco articulos obtienes el 10% de descuento!! Aprovecha");

    } else{
        Descuento = parseFloat(Total) * 0.10;

    }if(confirm("Desea aprovechar la promocion?") && Contador<=2){
        return false;
    } else {
        // abrir el ticket
        var iva=0;
        var tneto=0;
        iva= parseFloat(Total - Descuento)*0.16;
        tneto= parseFloat((Total - Descuento)+iva);
        document.all.articulos.value= Contador;
        document.all.total.value= Total;
        document.all.descuento.value = Descuento;
        document.all.iva.value = iva;
        document.all.neto.value=tneto;
        window.open("impresion.php?articulos="+Contador.toString()+"&total="+Total.toString()+"&descuento="+Descuento.toString()+"&iva="+iva.toString()+"&neto="+tneto.toString(), "Ticket" , "width=400, height=400");

    }
}
