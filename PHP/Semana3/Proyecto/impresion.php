<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body style="color:darkslateblue; font-family:Calibri">
    <script lamguaje="javascript">
        document.writeln('Tienda online\n');
        document.writeln("</br></br>");
        document.writeln('Articulos: '+getParameterByName("articulos"));
        document.writeln("</br>");
        document.writeln('Sub-Total: ' + getParameterByName("total"));
        document.writeln("</br>");
        document.writeln('Descuento: ' + getParameterByName("descuento"));
        document.writeln("</br>");
        document.writeln('IVA: ' + getParameterByName("iva"));
        document.writeln("</br>");
        document.writeln('Total Neto: ' + getParameterByName("neto"));
        document.writeln("</br>");
        document.writeln("</br>");


        function getParameterByName(name){
            name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
            var regexS = "[\\?&]" + name + "=([^&#]*)";
            var regex = new RegExp(regexS);
            var results = regex.exec(window.location.href);
            if (results == null)
                return "";
            else
                return decodeURIComponent(results[1].replace(/\+/g, " "));
        }

        var meses=new Array("Enero", "Febrero" , "Marzo" , "Abril", "Mayo" , "Junio" , "Julio" , "Agosto" , "Septiembre" , "Octubre" , "Noviembre" , "Diciembre");
        var diasSemana = new Array("Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado");
        var f = new Date();
        document.write(diasSemana[f.getDay()] + " " + f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear());
    
        function startTime(){
            today = new Date();
            h = today.getHours();
            m = today.getMinutes();
            s = today.getSeconds();
            m = checkTime(m);
            s = checkTime(s);
            document.getElementById('reloj').innerHTML = h + ":" + m + ":" + s;
            t = setTimeout('startTime()', 500);
        }
    
    
    </script>
        <form>
        <div id="reloj" style="font-size:20px;"></div>
        <input type="button" value="Imprimir" onClick="window.print()" />

    </form>
</body>
</html>